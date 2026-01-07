#!/bin/bash
set -x

apt-get update -y
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2

echo "<h1>Hello From The EC2 Instance Server</h1>" > /var/www/html/index.html
