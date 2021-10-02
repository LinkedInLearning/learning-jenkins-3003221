# Learning Jenkins, 03-07: Boolean Parameters
Create a freestyle job with one build step.

# WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo OFF
echo "RUN_TESTS = %RUN_TESTS%"
IF "%RUN_TESTS%"=="true" (
    ECHO "RUNNING TESTS!"
) ELSE (
    ECHO "No tests will be run"
)
```

# Troubleshooting Errors

