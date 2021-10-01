# Learning Jenkins, 03-06: Choice Parameters
Create a freestyle job with one build step.

# WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo off
@echo ENVIRONMENT = %ENVIRONMENT%
```

# Troubleshooting Errors

