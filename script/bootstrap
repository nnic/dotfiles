#!/bin/bash

# bootstrap installs things

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)
echo $DOTFILES_ROOT

set -e

apt-get install stow
apt-get install zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

git config --global user.email "nic.masters@gmail.com"
git config --global user.name "Nic Masters"
