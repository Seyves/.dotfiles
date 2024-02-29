#!/bin/bash
#dependencies
sudo apt install tmux zsh zplug kitty curl wget fzf fd-find 

#nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

#nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install 20.11.1

#go
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz

#fonts
mkdir $HOME/.fonts
cp -r ./fonts/* $HOME/.fonts/
fc-cache -f -v

#symlinks
ln -s $HOME/.dotfiles/tmux $HOME/.config/tmux     
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.p10k.zsh $HOME/.p10k.zsh
ln -s $HOME/.dotfiles/kitty $HOME/.config/kitty
chsh -s $(which zsh)
