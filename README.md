# Java Gradle Project

This is a simple Java application built using Gradle. Below are the instructions on how to build and run the application.

## Project Structure

```
java-code
├── src
│   ├── main
│   │   ├── java
│   │   │   └── JavaSourceAnalyzer.java
│   ├── test
│   │   ├── java
│   │   │   └── AppTest.java
│   │   └── resources
|   |       └── application.properties
├── build.gradle
├── settings.gradle
├── application.properties
├──  README.md
```

## Requirements

- Java JDK 8 
- Gradle 6.0 or higher
## Building the Project

To build the project, navigate to the project directory and run:

```
gradle build
```

## Running the Application


To run the application, use the following command:

```
gradle run
```

## Configuration

You can configure the application settings in the `src/main/resources/application.properties` file. 

Before running the application, you should update `source.dir` with the path to the android platform source code. 

## License

This project is licensed under the MIT License.