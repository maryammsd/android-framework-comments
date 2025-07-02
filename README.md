# Find Method Dependencies in Android Framework Source Code 

This is a simple Java application built using Gradle. In this project, we aimed at collecting the comments written in Javadoc format for each class, method, and variable in Java source code, and storing them in the `JSON` format for further analysis. The collected data contains the dependency of each class, method, and variable on other classes, methods, and variables. This information can be used to learn about the source code and dependencies between different parts of it with each other.   Below are the instructions on how to build and run the application.


## Overview
In the Android source code, developers use the `javadoc` documentation format to create comments for classes, variables, and methods. In such a format, they leverage `@link` to explicitly define the relation between methods and variables. As shown in the example below, the method `getDisplayId` returns the value corresponding to the `getDisplay` method declared in the class `DisplayManager`.

````
 /**
     * Returns the display id of the received-gesture display, for use with
     * {@link android.hardware.display.DisplayManager#getDisplay(int)}.
     *
     * @return the display id.
     */
    public int getDisplayId() {
        return mDisplayId;
    }


````
By studying the documentation, we found out that existing comments contain valuable information about 
- Description of the classes, methods, or variables' operations. 
- Dependencies between classes, methods, and variables in their operation.
- Type of inputs for each method.
- Required configuration of an Android device.

### Example of Permission Description in the Comments
````

    /**
     * Sets the global display brightness configuration for a specific user.
     *
     * Note this requires the INTERACT_ACROSS_USERS permission if setting the configuration for a
     * user other than the one you're currently running as.
     *
     * @hide
     */
    public void setBrightnessConfigurationForUser(BrightnessConfiguration c, int userId,
            String packageName) {
        mGlobal.setBrightnessConfigurationForUser(c, userId, packageName);
    }

````
### Example of Display Setting in the Comments
````
/**
     * Returns the minimum brightness curve, which guarantess that any brightness curve that dips
     * below it is rejected by the system.
     * This prevent auto-brightness from setting the screen so dark as to prevent the user from
     * resetting or disabling it, and maps lux to the absolute minimum nits that are still readable
     * in that ambient brightness.
     *
     * @return The minimum brightness curve (as lux values and their corresponding nits values).
     *
     * @hide
     */
    @SystemApi
    public Pair<float[], float[]> getMinimumBrightnessCurve() {
        return mGlobal.getMinimumBrightnessCurve();
    }

````
Hence, we try to analyze the source code and the comments and collect this information for each API class and store it in `the output/API_CLASS_NAME.json` file. In this file, we separately store variables and methods and their dependency with the comments mentioned by the developers. An example of a created `.json` file is shown below:

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

## Project Structure

```
java-code
├── src
│   ├── main
│   │   ├── java
│   │   │   └── JavaSourceAnalyzer.java
│   │   │   └── ClassInfo.java
│   │   │   └── MethodInfo.java
│   │   │   └── VariableInfo.java
│   ├── resources
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
- (JavaParser)[https://github.com/javaparser/javaparser]

## Configuration

Before running the application, update `source.dir` with the path to the Android platform source code. You can configure it in the `src/main/resources/application.properties` file. 

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

##  Desired Outputs
The output is located in `JSON` files storing information about dependencies between classes, methods, and variables of the given source code. These files are located under the directory `output`. 


## License

This project is licensed under the MIT License.
