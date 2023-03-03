# Apache Maven 'Hello World!'
This is a small project for demonstrating the Apache Maven build management tool.

## Getting Started
You will need to have the following tools installed on your system:
- Git
- Java
- Maven

The following versions were used to create, build, and test this project:
```
# git --version
git version 2.33.0

# java -version
openjdk version "14.0.2" 2020-07-14
OpenJDK Runtime Environment (build 14.0.2+12-46)
OpenJDK 64-Bit Server VM (build 14.0.2+12-46, mixed mode, sharing)

# mvn -version
Apache Maven 3.8.2 (ea98e05a04480131370aa0c110b8c54cf726c06f)
Maven home: /usr/local/Cellar/maven/3.8.2/libexec
Java version: 16.0.2, vendor: Homebrew, runtime: /usr/local/Cellar/openjdk/16.0.2/libexec/openjdk.jdk/Contents/Home
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "11.4", arch: "x86_64", family: "mac"
```

These versions are not a requirement but are provided to provide some visibility into the build environment needed to run this project.

## Building the Project with Maven
To build the project with Maven, clone the repo and run the following command inside the repo:

```
mvn package
```

## Testing the Project with Java
The project includes a [very simple test](src/test/java/com/learningjenkins/AppTest.java) that demonstrates an assertion that will always pass.

To test the packaged code, build the code and run the following command inside the repo:

```
java -cp target/hello-1.0-SNAPSHOT.jar com.learningjenkins.App
```
