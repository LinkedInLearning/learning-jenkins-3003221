# Learning Jenkins, 01-05: Install Jenkins on Ubuntu

## Prerequisites
The target system should be running a recent version of the Ubuntu operating system.

You will need to be able to access the system via CLI, most likely over SSH, and via HTTP on port `8080`.


You will need to have `root` permission on the target system, specifically so you can run commands using `sudo`.

## Installation
In a terminal, run the following commands:
```
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get -y install openjdk-11-jdk
sudo apt-get -y install jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

## Using the Initial Admin Password
Run the following command and copy the output:
```
cat /var/lib/jenkins/secrets/initialAdminPassword
```

Open a browser to [localhost:8080](http://localhost:8080) and enter the initial admin password.
