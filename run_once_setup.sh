#!/bin/bash
chsh -s $(which zsh)

mkdir -p ~/.local/state/vim/{backup,swap,undo}

curl -sS https://starship.rs/install.sh | sh -s -- -y
