#!/bin/bash
echo "----------------------"
echo "Installing Java JDK..."
echo "----------------------"
sudo apt install -y java-common

sudo apt install -y default-jdk
sudo apt install -y openjdk-8-jdk

exit 0
