#!/bin/bash

echo "Updating server"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apg-get install unzip -y

echo "downloadng and copying files of the application"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
