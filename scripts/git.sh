#!/bin/bash
echo "-----------------"
echo "Installing Git..."
echo "-----------------"

apt install -y git
git config --global credential.helper store

# git config --global user.name "FIRST_NAME LAST_NAME"
# git config --global user.email "MY_NAME@example.com"
#[alias]
# lga = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
# lgh = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'
# lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
# lg2 = log --graph --pretty=format:'%Cred%h%Creset %ad %s %C(yellow)%d%Creset %C(bold blue)<%an>%Creset' --date=short
# lg3 = log --graph --full-history --all --pretty=format:'%Cred%h%Creset %ad %s %C(yellow)%d%Creset %C(bold blue)<%an>%Creset' --date=short
# lg = !git lga
# co = checkout
# st = status
# cam = commit -am
# cend = commit -a --amend
# fa = fetch -t origin
# fp = fetch -p -P origin
# b = branch
# pt = push origin --tags
# dft = difftool HEAD^
# df = diff HEAD^

exit 0
