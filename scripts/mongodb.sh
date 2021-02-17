#!/bin/bash
echo "------------------"
echo "Install MongoDB..."
echo "------------------"

#wget --progress=dot:giga http://downloads.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.2.4.tgz
#tar xzf mongodb-linux-x86_64-ubuntu1404-3.2.4.tgz
#mkdir -p /var/log/mongodb
#mkdir -p /var/lib/mongodb

curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod.service
sudo systemctl status mongod
sudo systemctl enable mongod

echo "database is running on port 27017 on 127.0.0.1"
exit 0
