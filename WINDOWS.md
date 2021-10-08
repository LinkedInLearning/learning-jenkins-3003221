# Learning Jenkins, 03-07: Boolean Parameters
Create a freestyle job with one build step.

Add a boolean parameter called `RUN_TESTS`.

## WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo OFF
echo "RUN_TESTS = %RUN_TESTS%"
if "%RUN_TESTS%"=="true" (
    echo "RUNNING TESTS!"
) else (
    echo "No tests will be run"
)
```
