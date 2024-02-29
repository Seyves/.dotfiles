# My dotfiles.

To install just run:
```bash
sudo bash debian-install.sh && bash create-sym.sh
```

For now install script is only written for debian, but there is no complex dependencies, so it probably will work if you just replace apt-get in debian-install.sh with your packet manager.

Features:
- session manager (in ~/personal and ~/work directory);
- dark/light theme toggle (run `:lua ToggleTheme()` in neovim), it is also changes color-scheme for plasma, so consider installing themes in color-schemes directory if you using kde.
