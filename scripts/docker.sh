#!/bin/bash
echo "-----------------"
echo "Install Docker..."
echo "-----------------"

sudo apt install -y apt-transport-https ca-certificates
# sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
# sudo apt update
# sudo apt install -y docker-engine
# sudo service docker start
# sudo curl -s -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /tmp/docker-compose
# sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
# docker --version
# docker-compose --version
# sudo usermod -aG docker vagrant

sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo usermod -aG docker vagrant
docker --version

exit 0
