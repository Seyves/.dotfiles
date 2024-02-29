#!/bin/bash
apt-get install tmux
apt-get install zsh
apt-get install zplug 
apt-get install kitty
apt-get install curl
apt-get install fzf
apt-get install fd-find

#nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz

#nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source "/home/$LOGNAME/.nvm/nvm.sh"
nvm install 20.11.1

#go
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
