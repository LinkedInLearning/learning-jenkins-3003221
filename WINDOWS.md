# Learning Jenkins, 02-07: Run and Monitor Jobs
Use the console to create a freestyle job with one build step.

# WINDOWS SYSTEMS
If you are running Jenkins on a Windows system:

1. Select the `Execute Windows batch command` build step
2. Enter the following for the command:
```
@echo off
for /L %%i in (1,1,30) do (
  @echo %%i
  @ping localhost -n 2 >NUL
)
exit /b 1
```

# Troubleshooting Errors
If you select the `Execute shell` build step, you will see an error similar to the following:
```
Building in workspace C:\Windows\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\hello-jenkins
[hello-jenkins] $ sh -xe C:\Windows\TEMP\jenkins4677419767712773799.sh
The system cannot find the file specified
FATAL: command execution failed
java.io.IOException: CreateProcess error=2, The system cannot find the file specified
	at java.lang.ProcessImpl.create(Native Method)
	at java.lang.ProcessImpl.<init>(Unknown Source)
	at java.lang.ProcessImpl.start(Unknown Source)
Caused: java.io.IOException: Cannot run program "sh" (in directory "C:\Windows\system32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\hello-jenkins"): CreateProcess error=2, The system cannot find the file specified
	at java.lang.ProcessBuilder.start(Unknown Source)
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
Build step 'Execute shell' marked build as failure
Finished: FAILURE
```

This is because the program Jenkins uses with the `Execute shell` build step is not available on your system.

To fix this error, use the `Execute Windows batch command` as described above.

