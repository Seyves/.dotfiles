#!/bin/bash
apt-get install tmux
apt-get install zsh
apt-get install zplug 
apt-get install kitty
apt-get install curl
apt-get install fzf
apt-get install fd-find
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
chsh -s $(which zsh)
