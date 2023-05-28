# Learning Jenkins, 01-05: Install Jenkins on Ubuntu

## Prerequisites
The target system should be running a recent version of the Ubuntu operating system.

You will need to be able to access the system via CLI, most likely over SSH, and via HTTP on port `8080`.


You will need to have `root` permission on the target system, specifically so you can run commands using `sudo`.

## Installation
In a terminal, run the following commands:
```
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
  sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | \
  sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo apt-get -y install openjdk-11-jdk

sudo apt-get -y install jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

## Using the Initial Admin Password
Run the following command and copy the output:
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Open a browser to [localhost:8080](http://localhost:8080) and enter the initial admin password.
