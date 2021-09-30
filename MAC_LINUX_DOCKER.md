# Learning Jenkins, 02-06: Run and Monitor Jobs
Use the console to create a freestyle job with one build step.

# MacOS, Linux, and Docker
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

# Troubleshooting Errors
If you select the `Execute Windows batch command` build step, you will see an error similar to the following:
```
Building in workspace /var/jenkins_home/workspace/hello
[hello] $ cmd /c call /tmp/jenkins3248756842772121939.bat
FATAL: command execution failed
java.io.IOException: error=2, No such file or directory
	at java.base/java.lang.ProcessImpl.forkAndExec(Native Method)
	at java.base/java.lang.ProcessImpl.<init>(ProcessImpl.java:340)
	at java.base/java.lang.ProcessImpl.start(ProcessImpl.java:271)
	at java.base/java.lang.ProcessBuilder.start(ProcessBuilder.java:1107)
Caused: java.io.IOException: Cannot run program "cmd" (in directory "/var/jenkins_home/workspace/hello"): error=2, No such file or directory
	at java.base/java.lang.ProcessBuilder.start(ProcessBuilder.java:1128)
	at java.base/java.lang.ProcessBuilder.start(ProcessBuilder.java:1071)
	at hudson.Proc$LocalProc.<init>(Proc.java:253)
	at hudson.Proc$LocalProc.<init>(Proc.java:222)
	at hudson.Launcher$LocalLauncher.launch(Launcher.java:996)
	at hudson.Launcher$ProcStarter.start(Launcher.java:508)
	at hudson.tasks.CommandInterpreter.perform(CommandInterpreter.java:144)
	at hudson.tasks.CommandInterpreter.perform(CommandInterpreter.java:92)
	at hudson.tasks.BuildStepMonitor$1.perform(BuildStepMonitor.java:21)
	at hudson.model.AbstractBuild$AbstractBuildExecution.perform(AbstractBuild.java:808)
	at hudson.model.Build$BuildExecution.build(Build.java:199)
	at hudson.model.Build$BuildExecution.doRun(Build.java:164)
	at hudson.model.AbstractBuild$AbstractBuildExecution.run(AbstractBuild.java:516)
	at hudson.model.Run.execute(Run.java:1889)
	at hudson.model.FreeStyleBuild.run(FreeStyleBuild.java:43)
	at hudson.model.ResourceController.execute(ResourceController.java:100)
	at hudson.model.Executor.run(Executor.java:433)
Build step 'Execute Windows batch command' marked build as failure
Finished: FAILURE
```

This is because the program Jenkins uses with the `Execute Windows batch command` build step is not available on your system.

To fix this error, use the `Execute shell` build step as described above.
