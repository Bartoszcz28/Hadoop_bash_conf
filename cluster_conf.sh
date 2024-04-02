#!/bin/bash

# Dodanie funkcji do pliku ~/.bashrc
cat << 'EOF' >> ~/.bashrc

otherpis() {
  grep "r" /etc/hosts | awk '{print $2}' | grep -v $(hostname)
}

clustercmd() {
  for r in $(otherpis); do ssh $r "$@"; done
  $@
}

clusterreboot() {
  clustercmd sudo shutdown -r now
}

clustershutdown() {
  clustercmd sudo shutdown now
}

clusterscp() {
  for r in $(otherpis); do
    cat $1 | ssh $r "sudo tee $1" > /dev/null 2>&1
  done
}

EOF

# Loading the changes
source ~/.bashrc