#!/bin/bash

mkdir -p ~/.local/state/vim/{backup,swap,undo}

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh

curl -sS https://starship.rs/install.sh | sh -s -- -y

curl https://mise.run | sh
