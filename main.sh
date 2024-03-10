#!/bin/bash

# Upgrade & installation
sudo apt-get update && sudo apt-get upgrade -y



# Permission to run the script
sudo chmod +x java.sh
# Java installation
bash java.sh

#Permission to run the script
sudo chmod +x hadoop.sh
# Hadoop installation
bash hadoop.sh

#Permission to run the script
sudo chmod +x PySpark.sh
# Hadoop installation
bash PySpark.sh

sudo reboot