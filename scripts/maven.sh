#!/bin/bash

echo "-------------------"
echo "Installing Maven..."
echo "-------------------"
sudo apt install -y maven
# Setup environment variables
# sudo touch /etc/profile.d/maven.sh
# sudo bash -c 'echo "export JAVA_HOME=$(readlink -f $(which java))" >> /etc/profile.d/maven.sh' # /usr/lib/jvm/java-8-openjdk-amd64/jre
# sudo bash -c 'echo "export M2_HOME=/usr/share/maven" >> /etc/profile.d/maven.sh'
# sudo bash -c 'echo "export MAVEN_HOME=/usr/share/maven" >> /etc/profile.d/maven.sh'
# sudo bash -c 'echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> /etc/profile.d/maven.sh'
#source /etc/profile.d/maven.sh
mvn -version

exit 0
