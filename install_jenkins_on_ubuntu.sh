#!/bin/bash 

# install Jenkins on Ubuntu

# this script should be executed as root user: su -

# get Jenkins key 
wget -q -O – http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | apt-key add

# get Jenkins package
echo “deb http://pkg.jenkins-ci.org/debian-stable binary/” | tee -a /etc/apt/sources.list 

# install all updates
apt-get update && apt-get upgrade -y 

# install Java
apt-get -y install openjdk-8-jdk

# install Jenkins 
apt-get -y install jenkins 

# get Jenkins initial password
cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Copy the initial admin password, go to localhost:8080 in web browser and follow prompts."
