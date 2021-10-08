# Learning Jenkins, 03-05: String Parameters
Create a freestyle job with one build step.

Add a string parameter for `VERSION_NUMBER`.

## WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo off
@echo VERSION_NUMBER = %VERSION_NUMBER%
```

[Follow this link for more details on Windows](WINDOWS.md)

## MacOS, Linux, and Docker
If you are running Jenkins on MacOS, Linux, or Docker:

1. Select the `Execute shell` build step.
2. Enter the following for the command:
```
#!/bin/bash
echo "VERSION_NUMBER = $VERSION_NUMBER"
```

[Follow this link for more details on MacOS, Linux, and Docker](MAC_LINUX_DOCKER.md)
