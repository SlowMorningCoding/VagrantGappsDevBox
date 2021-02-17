#!/bin/bash
echo "------------------------------"
echo "Install Java building stuff..."
echo "------------------------------"

sudo apt install -y java-common openjdk-8-jre # openjdk-7-jre default-jdk
sudo apt install -y maven

# Setup environment variables
sudo touch /etc/profile.d/maven.sh
sudo bash -c 'echo "export JAVA_HOME=$(readlink -f $(which java))" >> /etc/profile.d/maven.sh' # /usr/lib/jvm/java-8-openjdk-amd64/jre
sudo bash -c 'echo "export M2_HOME=/usr/share/maven" >> /etc/profile.d/maven.sh'
sudo bash -c 'echo "export MAVEN_HOME=/usr/share/maven" >> /etc/profile.d/maven.sh'
sudo bash -c 'echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> /etc/profile.d/maven.sh'
#source /etc/profile.d/maven.sh
mvn -version

# Gradle
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
