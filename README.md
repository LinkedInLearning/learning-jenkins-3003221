# Learning Jenkins, 02-07: Run and Monitor Jobs
Create a freestyle job with one build step.

## WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo off
for /L %%i in (1,1,30) do (
  @echo %%i
  @ping localhost -n 2 >NUL
)
exit /b 0
```

[Follow this link for more details on Windows](WINDOWS.md)

## MacOS, Linux, and Docker
If you are running Jenkins on MacOS, Linux, or Docker:

1. Select the `Execute shell` build step.
2. Enter the following for the command:
```
#!/bin/bash
for i in {1..30}; do
  echo $i;
  sleep 1;
done
```

[Follow this link for more details on MacOS, Linux, and Docker](MAC_LINUX_DOCKER.md)
