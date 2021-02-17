#!/bin/bash
echo "--------------------"
echo "Install Redis..."
echo "--------------------"
#wget --progress=dot:giga http://download.redis.io/releases/redis-3.0.7.tar.gz
#tar xzf redis-3.0.7.tar.gz
#cd redis-3.0.7
#make
#mkdir -p /var/lib/redis/6379
#cd ..
sudo apt install redis-server

exit 0
