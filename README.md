# Find Method Dependencies in Android Framework Source Code 

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


## Desired Output
In this project, we aim at analyzing the Android framework source code. In the Android source code, the developers use `javadoc` to describe the operation behind each variable, method and class. They leverage `@link` to explicitely define the relation between methods and variables. They also mention the required configuration of Android device settings. Hence, these comments are valuable resources to learn about 
- dependency of methods and variables to each other in their operation.
- type of inputs for each method
- required configuration of an Android device
We try to analyze the source code and the comments and collect these information for each API class and store it in `output/API_CLASS_NAME.json` file. In this file, we separately store variables and methods and their dependency with the comment mentioned by the developers. An example of a created `.json` file is shown below:

````
{
  "filePath" : "/home/maryam/clearblue/files/android-source-30/android/accessibilityservice/AccessibilityGestureEvent.java",
  "packageName" : "android.accessibilityservice",
  "className" : "AccessibilityGestureEvent",
  "comment" : "",
  "variables" : [ {
    "name" : "CREATOR",
    "type" : "Parcelable.Creator<AccessibilityGestureEvent>",
    "comment" : "\n     * @see Parcelable.Creator\n     ",
    "links" : [ ]
  } ],
  "methods" : [ {
    "name" : "public int getDisplayId()",
    "returnType" : "int",
    "comment" : "\n     * Returns the display id of the received-gesture display, for use with\n     * {@link android.hardware.display.DisplayManager#getDisplay(int)}.\n     *\n     * @return the display id.\n     ",
    "links" : [ "android.hardware.display.DisplayManager#getDisplay(int)" ]
  } ],
  "variableNames" : [ "mGestureId", "mDisplayId", ... ],
  "methodNames" : [ "public int getDisplayId()", ... ]
}


````


## License

This project is licensed under the MIT License.