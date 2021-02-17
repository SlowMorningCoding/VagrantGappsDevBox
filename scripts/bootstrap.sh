#!/bin/bash

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

echo "Install common packages"
apt install -y bash-completion
apt install -y vim unzip
apt install -y git
apt install -y build-essential libssl-dev # dpkg-dev fakeroot g++ gcc make...
apt install -y curl libcurl4-gnutls-dev libexpat1-dev
apt install -y gettext software-properties-common
apt install -y ntp nfs-common linux-headers-$(uname -r)
apt install -y perl dkms

exit 0
