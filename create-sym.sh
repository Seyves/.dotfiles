#!/bin/bash
ln -s ~/.dotfiles/tmux ~/.config/tmux     
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/kitty ~/.config/kitty
chsh -s $(which zsh)
