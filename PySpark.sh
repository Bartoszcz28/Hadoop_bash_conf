#!/bin/bash

#Changing directory
cd /opt
# PySpark download
sudo wget https://ftp.heanet.ie/mirrors/www.apache.org/dist/spark/spark-3.5.1/pyspark-3.5.1.tar.gz
# PySprk Unpacking
sudo tar -xvf pyspark-3.5.1.tar.gz -C /opt/
# Removal of unnecessary files
sudo rm pyspark-3.5.1.tar.gz
# Name change
sudo mv pyspark-3.5.1 pyspark
# Granting permissions
sudo chown bartosz:bartosz -R /opt/pyspark
# Adding environment variables
# echo 'export JAVA_HOME=/opt/zulu21.32.17-ca-jdk21.0.2-linux_aarch64' >> ~/.bashrc
echo 'export SPARK_HOME=/opt/pyspark/deps' >> ~/.bashrc
echo 'export PATH=$PATH:$SPARK_HOME/bin' >> ~/.bashrc

cd /opt/pyspark/deps/bin/
./spark-shell

#spark-shell --version