import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.utils.SourceRoot;
import com.github.javaparser.ast.type.Type;

import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Optional;
import com.fasterxml.jackson.databind.ObjectMapper;
// This is a simple Java application that uses JavaParser to analyze Java source files.
// It extracts class names, field names, types, and comments associated with them.
// To run this code, ensure you have the JavaParser library in your classpath.
// You can add it via Maven or Gradle, or download the jar directly from the JavaParser website.
// Make sure to replace the path with the actual path to your Java source files.

public class JavaSourceAnalyzer {
    // Change this to the directory containing your Java source files
    private static String SOURCE_DIR = "src/main/java";
    private static String FILE_EXTENSION = ".java";
    private static int NUM_OF_CLASSES = 0, NUM_OF_INTERFACES = 0, NUM_OF_LINKS_METHOD = 0, NUMBER_OF_LINKS_VARS = 0, NUM_OF_LINKS_CLASS = 0;
    private static ArrayList<ClassInfo> classInfoList = new ArrayList<>();

    public static void main(String[] args) {
        loadConfiguration();
        System.out.println("Source Directory: " + SOURCE_DIR);
        System.out.println("File Extension: " + FILE_EXTENSION);

        // Example usage
        Path sourcePath = Paths.get(SOURCE_DIR);
        System.out.println("Analyzing files in: " + sourcePath); 
        analyzeFile(sourcePath);
    }

    private static void loadConfiguration() {
        try (InputStream input = JavaSourceAnalyzer.class.getClassLoader().getResourceAsStream("application.properties")) {
            if (input == null) {
                System.err.println("Configuration file not found!");
                return;
            }

            Properties prop = new Properties();
            prop.load(input);

            SOURCE_DIR = prop.getProperty("source.dir");
            FILE_EXTENSION = prop.getProperty("file.extension");
        } catch (IOException ex) {
            System.err.println("Failed to load configuration: " + ex.getMessage());
        }
    }


    private static void analyzeFile(Path directory) {
        long period = System.currentTimeMillis();
        try {
            Files.walk(directory)
                .filter(Files::isRegularFile)
                .filter(file -> file.toString().endsWith(FILE_EXTENSION))
                .forEach(file -> {
                    try {
                        JavaParser parser = new JavaParser();
                        ParseResult<CompilationUnit> result = parser.parse(file);

                        if (result.isSuccessful() && result.getResult().isPresent()) {
                            CompilationUnit cu = result.getResult().get();
                            // Proceed with analysis
                            List<ClassOrInterfaceDeclaration> classes = cu.findAll(ClassOrInterfaceDeclaration.class);
                            for (ClassOrInterfaceDeclaration cls : classes) {
                                if(cls.isInterface() || cls.isAbstract()) {
                                    NUM_OF_INTERFACES++;
                                } else {
                                    NUM_OF_CLASSES++;
                                    int[] num_of_fields = {0};
                                    int[] num_of_methods = {0};
                                      // Extract class name and package
                                        String className = cls.getNameAsString();
                                        String packageName = cu.getPackageDeclaration()
                                                .map(pd -> pd.getNameAsString())
                                                .orElse("default");
                                    ClassInfo classInfo = new ClassInfo(cls.getNameAsString(), 
                                        packageName, 
                                        file.toString(), 
                                        cls.getComment().map(Comment::getContent).orElse(""));
                                    NUM_OF_LINKS_CLASS += extractLinkReferences(classInfo.getComment()).size();
                                    // Extract fields in the class
                                    cls.getFields().forEach(field -> {
                                        printFieldDetails(field);
                                        field.getVariables().forEach(variable -> {
                                            num_of_fields[0]++;
                                            String variableName = variable.getNameAsString();
                                            Type variableType = variable.getType();
                                            Optional<Comment> comment = field.getComment();
                                            String commentText = comment.isPresent() ? comment.get().getContent() : "";
                                            List<String> variableLinks = extractLinkReferences(commentText);
                                            NUMBER_OF_LINKS_VARS += variableLinks.size();
                                            classInfo.addVariable(variableName, variableType.toString(), commentText, variableLinks);
                                        });
                                    });

                                    // Extract Methods int the class
                                    cls.getMethods().forEach(method -> {
                                        num_of_methods[0]++;
                                        String methodSignature = method.getDeclarationAsString();
                                        Type methodReturnType = method.getType();
                                        Optional<Comment> comment = method.getComment();
                                        String commentText = comment.isPresent() ? comment.get().getContent() : "";             
                                        
                                        List<String> methodLinks = extractLinkReferences(commentText);
                                        NUM_OF_LINKS_METHOD += methodLinks.size();
                                        classInfo.addMethod(methodSignature, methodReturnType.toString(), commentText, methodLinks);
                                    });
                                    System.out.println("-------------------------------------------");
                                    System.out.println("Class Name: " + className);
                                    System.out.println("Package Name: " + packageName);
                                    System.out.println("Number of Methods: " + num_of_methods[0]);
                                    System.out.println("Number of Fields: " + num_of_fields[0]);
                                    classInfoList.add(classInfo);
                                    // Save class information to JSON
                                    String outputFilePath = "./output/" + packageName+className + ".json";
                                    saveClassInfoToJson(classInfo, outputFilePath);
                                }

                            }
                        } else {
                            System.err.println("Failed to parse file: " + file);
                        }
                    } catch (IOException e) {
                        System.err.println("Error reading file: " + file + " - " + e.getMessage());
                    }
                });
        } catch (IOException e) {
            System.err.println("Error accessing directory: " + directory + " - " + e.getMessage());
        }
        period =  System.currentTimeMillis() - period;
        System.out.println("Total Classes: " + NUM_OF_CLASSES);
        System.out.println("Total Interfaces: " + NUM_OF_INTERFACES);
        System.out.println("Total Methods with @link: " + NUM_OF_LINKS_METHOD);
        System.out.println("Total Variables with @link: " + NUMBER_OF_LINKS_VARS);
        System.out.println("Total Classes with @link: " + NUM_OF_LINKS_CLASS);
        System.out.println("Analysis completed in: " + period + " ms");
    }

    private static void saveClassInfoToJson(ClassInfo classInfo, String outputFilePath) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.writerWithDefaultPrettyPrinter().writeValue(Paths.get(outputFilePath).toFile(), classInfo);
            System.out.println("Class information saved to: " + outputFilePath);
        } catch (IOException e) {
            System.err.println("Failed to save class information to JSON: " + e.getMessage());
        }
    }

    private static void printFieldDetails(FieldDeclaration field) {
        field.getVariables().forEach(variable -> {
            String fieldName = variable.getNameAsString();
            String fieldType = variable.getType().asString();
            Optional<Comment> comment = field.getComment();
            String commentText = comment.isPresent() ? comment.get().getContent() : "No comment";

            System.out.println("Field Name: " + fieldName);
            System.out.println("Field Type: " + fieldType);
            System.out.println("Comment: " + commentText);
        });
    }

    private static List<String> extractLinkReferences(String comment) {
    List<String> links = new ArrayList<>();
    String regex = "@link\\s+([\\w.#]+)";
    Pattern pattern = Pattern.compile(regex);
    Matcher matcher = pattern.matcher(comment);

    while (matcher.find()) {
        links.add(matcher.group(1)); // Extract the reference after @link
    }

    return links;
}
}