#!/bin/bash

# install Jenkins in Docker container

# pull lates Jenkins image from Docker Hub

docker pull jenkins/jenkins:lts

# run Jenkins container on localhost:8080

docker run --detach --publish 8080:8080 --volume jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts 

# get Jenkins initial password

docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

echo "Copy the initial admin password, go to localhost:8080 in web browser and follow prompts."
