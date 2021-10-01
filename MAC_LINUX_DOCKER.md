# Learning Jenkins, 03-06: Choice Parameters
Create a freestyle job with one build step.

# MacOS, Linux, and Docker
If you are running Jenkins on MacOS, Linux, or Docker:

1. Select the `Execute shell` build step.
2. Enter the following for the command:
```
#!/bin/bash
echo "ENVIRONMENT = $ENVIRONMENT"
```

# Troubleshooting Errors

