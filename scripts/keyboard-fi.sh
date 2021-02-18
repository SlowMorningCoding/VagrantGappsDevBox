#!/bin/bash
echo "----------------------------------"
echo "Setting Finnish keyboard layout..."
echo "----------------------------------"

sudo apt install -y language-pack-fi language-pack-fi-base
localectl set-locale LANG=fi_FI.UTF-8

gsettings set org.gnome.desktop.input-sources sources "[('xkb','fi')]"
gsettings set org.gnome.desktop.input-sources current 0


#sudo echo "LANG=fi_FI.UTF-8" >> /etc/environment
#sudo echo "LANGUAGE=fi_FI.UTF-8" >> /etc/environment
#sudo echo "LC_ALL=fi_FI.UTF-8" >> /etc/environment
#sudo echo "LC_CTYPE=fi_FI.UTF-8" >> /etc/environment

#sudo setxkbmap fi
#sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"fi\"/g' /etc/default/keyboard
#udevadm trigger --subsystem-match=input --action=change

exit 0
