#!/bin/bash

echo "------------------"
echo "Upgrading linux..."
echo "------------------"

# provision script is run as root by default
echo "Update packages"
apt update
apt upgrade -y
# full-upgrade performs the function of upgrade but may also remove
# installed packages if that is required in order to resolve a
# package conflict.
apt full-upgrade -y
apt install -y virtualbox-guest-utils virtualbox-guest-x11
apt install -y ubuntu-desktop

echo "Cleanup"
apt -y autoremove

echo "----------------------------"
echo "Installin common packages..."
echo "----------------------------"
apt install -y bash-completion
apt install -y software-properties-common
apt install -y build-essential # includes eg. dpkg-dev fakeroot g++ gcc make...
apt install -y gettext
apt install -y libssl-dev
apt install -y ntp #  Network Time Protocol daemon and utility programs
apt install -y nfs-common
apt install -y dkms linux-headers-$(uname -r)

echo "------------------------"
echo "Installin common apps..."
echo "------------------------"
apt install -y vim
apt install -y notepadqq
apt install -y unzip
apt install -y p7zip-full

echo "-----------------"
echo "Installin Perl..."
echo "-----------------"
apt install -y perl

echo "-----------------"
echo "Installin Curl..."
echo "-----------------"
apt install -y curl # curl is used in command lines or scripts to transfer data.
apt install -y  # libcurl is an easy-to-use client-side URL transfer library,
apt install -y libexpat1-dev # XML parsing C library - development kit

exit 0
