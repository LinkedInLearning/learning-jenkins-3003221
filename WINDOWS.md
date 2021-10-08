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

## Troubleshooting Errors

