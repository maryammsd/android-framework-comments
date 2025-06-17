import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.github.javaparser.ast.type.Type;

public class ClassInfo {

    private String filePath;
    private String packageName;
    private String className;
    private String comment;
    private List<VariableInfo> variables = new ArrayList<>();
    private List<MethodInfo> methods = new ArrayList<>();


    public ClassInfo(String className, String packageName, String filePath, String comment) {
        this.className = className;
        this.packageName = packageName;
        this.filePath = filePath;
        this.comment = comment;
        this.variables = new ArrayList<>();
        this.methods = new ArrayList<>();
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String name){
        this.className = name;
    }


    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String name){
        this.packageName = name;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String path){
        this.filePath = path;
    }

    public ArrayList<String> getVariableNames() {
        return new ArrayList<>(variables.stream()
                .map(VariableInfo::getName)
                .collect(Collectors.toList()));
    }
    public ArrayList<String> getMethodNames() {
        return new ArrayList<>(methods.stream()
                .map(MethodInfo::getName)
                .collect(Collectors.toList()));
    }
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    public List<VariableInfo> getVariables() {
        return variables;
    }
    public void setVariables(List<VariableInfo> variables) {
        this.variables = variables;
    }
    public List<MethodInfo> getMethods() {
        return methods;
    }
    public void setMethods(List<MethodInfo> methods) {
        this.methods = methods;
    }

    public void addVariable(String variableName, String type, String comment, List<String> links) {
        if(variables.stream().noneMatch(v -> v.getName().equals(variableName))) {
            variables.add(new VariableInfo(variableName, type, comment,links));
        } else {
            // Update existing variable
            variables.stream()
                .filter(v -> v.getName().equals(variableName))
                .findFirst()
                .ifPresent(v -> {
                    v.setType(type);
                    v.setComment(comment);
                });
        }
    }

    public void addMethod(String methodName, String returnType, String comment, List<String> links) {
        if(methods.stream().noneMatch(m -> m.getName().equals(methodName))) {
            methods.add(new MethodInfo(methodName, returnType.toString(), comment,links));
        } else {
            // Update existing method
            methods.stream()
                .filter(m -> m.getName().equals(methodName))
                .findFirst()
                .ifPresent(m -> {
                    m.setReturnType(returnType);
                    m.setComment(comment);
                });
        }
    }

}