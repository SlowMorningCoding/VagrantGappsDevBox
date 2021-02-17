#!/bin/bash
echo "------------------"
echo "Install VS Code..."
echo "------------------"

sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update && sudo apt install -y code

# code --list-extensions # List the installed extensions.
# code --show-versions # Show versions of installed extensions, when using --list-extension.
# code --install-extension (<extension-id> | <extension-vsix-path>) # Installs an extension.
# code --uninstall-extension (<extension-id> | <extension-vsix-path>) # Uninstalls an extension.
# code --enable-proposed-api (<extension-id>) # Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.

echo "-------------------"
echo "Install IntelliJ..."
echo "-------------------"

sudo snap install intellij-idea-community --classic
#sudo snap install intellij-idea-ultimate --classic

exit 0