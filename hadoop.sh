#!/bin/bash

# Upgrade & installation
# sudo apt-get update && sudo apt-get upgrade -y

#Changing directory
cd /opt
# Hadoop download
sudo wget https://ftp.heanet.ie/mirrors/www.apache.org/dist/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz
# Hadoop Unpacking
sudo tar -xvf hadoop-3.3.6.tar.gz -C /opt/
# Name change
sudo mv hadoop-3.3.6 hadoop
# Granting permissions
sudo chown bartosz:bartosz -R /opt/hadoop
# Adding environment variables
echo 'export JAVA_HOME=$(readlink –f /usr/bin/java | sed "s:bin/java::")' >> ~/.bashrc
echo 'export HADOOP_HOME=/opt/hadoop' >> ~/.bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' >> ~/.bashrc

echo 'export JAVA_HOME=/opt/zulu21.32.17-ca-jdk21.0.2-linux_aarch64' >> /opt/hadoop/etc/hadoop/hadoop-env.sh
# Update of the current session
source ~/.bashrc
source /opt/hadoop/etc/hadoop/hadoop-env.sh

# hadoop version | grep Hadoop
