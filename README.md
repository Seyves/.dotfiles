# My dotfiles.

![](https://github.com/Seyves/.dotfiles/blob/main/showcase.gif)

To install terminal rc's just run:
```bash
    bash debian-install.sh
```

For now install script is only written for debian, but there is no complex dependencies, so it probably will work if you just replace apt-get in debian-install.sh with your packet manager.

To install plasma setup run:
```bash
    bash plasma-install.sh
```

Features:
- session manager (in ~/personal and ~/work directory);
- dark/light theme toggle (run `:lua ToggleTheme()` in neovim), it is also changes color-scheme for plasma.
