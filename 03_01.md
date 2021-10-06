# Learning Jenkins, 03-01: Using a global build tool

# Prerequisites
You will need to configure Maven as a global build tool.

In the Jenkins web interface, go to:

`Manage Jenkins` -> `Global Tool Configuration` -> `Maven installations` -> `Add Maven`.

Give your Maven installation a name and check the option to `Install automatically`.

# Setting up the Jenkins Job
Create a freestyle job and configure it as follows:

1. Under `Source Code Management`, select `Git` and enter the following URL:
```
https://github.com/LinkedInLearning/learning-jenkins-3003221
```
2. **MAKE SURE TO SET THE `Branch Specifier` to `*/03_01`**.
3. Add a build step using `Invoke Top-Level Maven Target`.
4. Select the Maven version you configured in the previous step.
5. For the goal, enter `package`.

# WINDOWS SYSTEMS
Select the `Execute Windows batch command` build step
```
java -cp target/hello-1.0-SNAPSHOT.jar com.learningjenkins.App
```
Save the job and start the build.

[Follow this link for more details on Windows](WINDOWS.md)

# MacOS, Linux, and Docker
Select the `Execute shell` build step.
```
java -cp target/hello-1.0-SNAPSHOT.jar com.learningjenkins.App
```
Save the job and start the build.

[Follow this link for more details on MacOS, Linux, and Docker](MAC_LINUX_DOCKER.md)

# Troubleshooting Errors
```
ERROR: Couldn't find any revision to build. Verify the repository and branch configuration for this job.
```
This error means you have probably entered the wrong branch under Source Code Management.  You need to enter `*/03_01` for the branch.

