#!/bin/bash

cat >> /etc/apt/sources.list <<EOF
deb https://download.virtualbox.org/virtualbox/debian xenial contrib
EOF

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- |  apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- |  apt-key add -

apt-get update

apt-get install -y virtualbox-5.2

usermod -aG vboxusers fugui
systemctl status vboxdrv
