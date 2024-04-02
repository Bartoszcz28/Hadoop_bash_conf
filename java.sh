#!/bin/bash

# # Changing directory
# cd /opt
# # Java download
# sudo wget https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# # Java Unpacking
# sudo tar -zxvf zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# # Removal of unnecessary files
# sudo rm zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# # Name change
# sudo mv zulu21.32.17-ca-jdk21.0.2-linux_aarch64 jdk21
# # Installation 
# sudo update-alternatives --install /usr/bin/java java /opt/jdk21/bin/java 1
# # Selecting configurations
# # sudo update-alternatives --config java -1
# # Adding environment variables
# echo 'export JAVA_HOME=/opt/jdk21' >> ~/.bashrc
# # Update of the current session
# source ~/.bashrc

# java -version


# Changing directory
cd /opt
# Library required by java
sudo apt-get install -y musl 
# Java download
sudo wget https://cdn.azul.com/zulu/bin/zulu8.72.0.17-ca-jdk8.0.382-linux_musl_aarch64.tar.gz
# Java Unpacking
sudo tar -zxvf zulu8.72.0.17-ca-jdk8.0.382-linux_musl_aarch64.tar.gz
# Removal of unnecessary files
sudo rm zulu8.72.0.17-ca-jdk8.0.382-linux_musl_aarch64.tar.gz
# Name change
sudo mv zulu8.72.0.17-ca-jdk8.0.382-linux_musl_aarch64 jdk8
# Installation 
sudo update-alternatives --install /usr/bin/java java /opt/jdk8/bin/java 1
# Adding environment variables
echo 'export JAVA_HOME=/opt/jdk8' >> ~/.bashrc
# Update of the current session
source ~/.bashrc

sudo apt-get update && sudo apt-get upgrade -y