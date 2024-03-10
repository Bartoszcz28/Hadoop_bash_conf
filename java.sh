#!/bin/bash

# Upgrade & installation
# sudo apt-get update && sudo apt-get upgrade -y

# Changing directory
cd /opt
# Java download
sudo wget https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# Java Unpacking
sudo tar -zxvf zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# Removal of unnecessary files
sudo rm zulu21.32.17-ca-jdk21.0.2-linux_aarch64.tar.gz
# Name change
sudo mv pyspark-3.5.1 spark
# Installation 
sudo update-alternatives --install /usr/bin/java java /opt/zulu21.32.17-ca-jdk21.0.2-linux_aarch64/bin/java 1
# Selecting configurations
# sudo update-alternatives --config java -1
# Adding environment variables
echo 'export JAVA_HOME=/opt/zulu21.32.17-ca-jdk21.0.2-linux_aarch64' >> ~/.bashrc
# Update of the current session
source ~/.bashrc

# java -version