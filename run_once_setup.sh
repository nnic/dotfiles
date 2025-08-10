#!/bin/bash
mkdir -p ~/.local/state/vim/{backup,swap,undo}

curl -sS https://starship.rs/install.sh | sh -s -- -y
