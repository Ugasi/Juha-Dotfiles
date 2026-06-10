#!/usr/bin/env bash

stow --target=$HOME nvim kitty fish tmux

curl -s https://ohmyposh.dev/install.sh | bash -s

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

