#window manager
sudo apt install kwin-bismuth

#shortcuts
rm $HOME/.config/kglobalshortcutsrc
ln -s $HOME/.dotfiles/plasma/kglobalshortcutsrc $HOME/.config/kglobalshortcutsrc

#applet
rm $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc
ln -s $HOME/.dotfiles/plasma/plasma-org.kde.plasma.desktop-appletsrc $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc

#color-schemes 
mkdir $HOME/.local/share/color-schemes
cp ./color-schemes/* $HOME/.local/share/color-schemes/
plasma-apply-colorscheme BreezeGrayDark

#plasmoids
mkdir $HOME/.local/share/plasma
mkdir $HOME/.local/share/plasma/plasmoids
cp -r ./plasma/org.kde.plasma.betterinlineclock $HOME/.local/share/plasma/plasmoids/
cp -r ./plasma/org.kde.plasma.minimaldesktopindicator $HOME/.local/share/plasma/plasmoids/

#lightly
sudo apt install cmake build-essential libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext qt3d5-dev
git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
cd Lightly && mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
make
sudo make install
plasma-apply-desktoptheme lightly-plasma-v4

#klassy
sudo apt install build-essential libkf5config-dev libkdecorations2-dev libqt5x11extras5-dev qtdeclarative5-dev extra-cmake-modules libkf5guiaddons-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5coreaddons-dev gettext cmake libkf5iconthemes-dev libkf5package-dev libkf5style-dev libkf5kcmutils-dev kirigami2-dev libqt5svg5-dev
git clone https://github.com/paulmcauley/klassy.git
cd klassy
./install.sh
