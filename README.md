# Learning Jenkins, 01-03: Install Jenkins on macOS

## Prerequisites
The target system should be running a recent version of the macOS

You will need to be able to access the system via CLI and via HTTP on port `8080`.

You will need to have [Homebrew](https://brew.sh/) installed.

You may need to have `root` permission on the target system.

## Installation
In a terminal, run the following commands:
```
brew install java
brew install jenkins
brew services start jenkins
cat ~/.jenkins/secrets/initialAdminPassword
```

## Using the Initial Admin Password
Run the following command and copy the output:
```
cat ~/.jenkins/secrets/initialAdminPassword
```

Open a browser to [localhost:8080](http://localhost:8080) and enter the initial admin password.
