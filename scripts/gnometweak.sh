#!/bin/bash
echo "--------------"
echo "Gnome tweak..."
echo "--------------"

# Add Terminal on favorites
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'org.gnome.Terminal.desktop']"

# Gnome
#sudo add-apt-repository universe
#sudo apt install -y gnome-tweak-tool

# Zsh
# Install zsh prerequisites
#sudo apt-get -y install zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Change the vagrant user's shell to use zsh
#config.vm.provision :shell, inline: "chsh -s /bin/zsh vagrant"

exit 0