#!/bin/bash

echo " WEBSERVER EMPRESA CONTOSO LTDA. "

echo "=== atualização do sistema webserver=== "

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "=== baixando e copiando file da empresa contoso=== "

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "==== fim do processo=== "
