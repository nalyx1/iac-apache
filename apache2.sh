#!/bin/bash

echo "Atualizando e instalando pacotes necessários"
apt-get update && apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Montando servidor web..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip #exemplo
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
service apache2 restart
