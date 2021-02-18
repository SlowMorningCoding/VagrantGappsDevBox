#!/bin/bash
echo "--------------------"
echo "Installing Gradle..."
echo "--------------------"

# sudo apt install -y gradle # version 4.4.1-10
VERSION=6.8.2
wget https://services.gradle.org/distributions/gradle-${VERSION}-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-${VERSION}-bin.zip
sudo ln -s /opt/gradle/gradle-${VERSION} /opt/gradle/latest
# Setting up the Environment Variables
sudo touch /etc/profile.d/gradle.sh
sudo bash -c 'echo "export GRADLE_HOME=/opt/gradle/latest" >> /etc/profile.d/gradle.sh'
sudo bash -c 'echo "export PATH=\${GRADLE_HOME}/bin:\${PATH}" >> /etc/profile.d/gradle.sh'
source /etc/profile.d/gradle.sh

exit 0
