#!/bin/bash
echo "----------------------"
echo "Installing IntelliJ..."
echo "----------------------"

sudo snap install intellij-idea-community --classic
# Add intellij-idea-community on favorites
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'intellij-idea-community_intellij-idea-community.desktop']"

sudo snap install intellij-idea-ultimate --classic
# Add intellij-idea-ultimate on favorites
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'intellij-idea-ultimate_intellij-idea-ultimate.desktop']"

exit 0