#!/bin/bash

echo "Atualização do SO..."
apt-get update
apt-get upgradev-y

echo "Instalação dos componentes..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Download da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Execução..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
