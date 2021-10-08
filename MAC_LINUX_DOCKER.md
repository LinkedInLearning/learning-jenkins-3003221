# Learning Jenkins, 03-07: Boolean Parameters
Create a freestyle job with one build step.

Add a boolean parameter called `RUN_TESTS`.

## MacOS, Linux, and Docker
If you are running Jenkins on MacOS, Linux, or Docker:

1. Select the `Execute shell` build step.
2. Enter the following for the command:
```
#!/bin/bash
echo "RUN_TESTS = $RUN_TESTS"
if [ "$RUN_TESTS" = "true" ];
then
    echo "RUNNING TESTS!";
else
    echo "No tests will be run...";
fi
```
