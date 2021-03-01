#!/bin/bash
echo "-----------------"
echo "Installing Git..."
echo "-----------------"

apt install -y git
git config --global credential.helper store

# git config --global user.name "FIRST_NAME LAST_NAME"
# git config --global user.email "MY_NAME@example.com"

#[alias]
git config --global alias.st 'status'
git config --global alias.co 'checkout'
git config --global alias.cam 'commit -am'
git config --global alias.cend 'commit -a --amend'
git config --global alias.fa 'fetch -t origin'
git config --global alias.fp 'fetch -p -P origin'
git config --global alias.b 'branch'
git config --global alias.pt 'push origin --tags'
# dft = difftool HEAD^
# df = diff HEAD^
git config --global alias.lg 'log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'
# lgh = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'
# lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
# lg2 = log --graph --pretty=format:'%Cred%h%Creset %ad %s %C(yellow)%d%Creset %C(bold blue)<%an>%Creset' --date=short
# lg3 = log --graph --full-history --all --pretty=format:'%Cred%h%Creset %ad %s %C(yellow)%d%Creset %C(bold blue)<%an>%Creset' --date=short
# lg = !git lga

exit 0
