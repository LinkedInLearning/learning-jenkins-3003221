# Learning Jenkins, 01-04: Install Jenkins as a Container

## Prerequisites
You will need to have [Docker](https://docs.docker.com/get-docker/) installed on your local system.

## Installation
In a terminal, run the following commands:

```
docker --version

docker pull jenkins/jenkins:lts

docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

## Using the Initial Admin Password
Run the following command and copy the output:
```
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Open a browser to [localhost:8080](http://localhost:8080) and enter the initial admin password.
