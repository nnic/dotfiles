#!/bin/bash

mkdir -p ~/.local/state/vim/{backup,swap,undo}

chsh -s /bin/zsh

curl -sS https://starship.rs/install.sh | sh -s -- -y

curl https://mise.run | sh

~/.local/bin/mise install
