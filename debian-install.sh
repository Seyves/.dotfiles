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

#fonst
mkdir $HOME/.fonts
cp -r ./fonts/* $HOME/.fonts/
fc-cache -f -v

#color-schemes
mkdir $HOME/.local/share/color-schemes
cp ./color-schemes/* $HOME/.local/share/color-schemes/
plasma-apply-colorscheme BreezeGrayDark
mkdir $HOME/.local/share/plasma/plasmoids
cp -r ./plasma/org.kde.plasma.betterinlineclock $HOME/.local/share/plasma/plasmoids/
cp -r ./plasma/org.kde.plasma.minimaldesktopindicator $HOME/.local/share/plasma/plasmoids/

#symlinks
ln -s $HOME/.dotfiles/tmux $HOME/.config/tmux     
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.p10k.zsh $HOME/.p10k.zsh
ln -s $HOME/.dotfiles/kitty $HOME/.config/kitty
chsh -s $(which zsh)

#lightly
sudo apt install cmake build-essential libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext qt3d5-dev
git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
