plasma-apply-colorscheme $1

mv ~/.dotfiles/alacritty/theme.toml ~/.dotfiles/alacritty/theme.toml.temp
mv ~/.dotfiles/alacritty/theme.toml.bak ~/.dotfiles/alacritty/theme.toml
mv ~/.dotfiles/alacritty/theme.toml.temp ~/.dotfiles/alacritty/theme.toml.bak

mv ~/.dotfiles/nvim/after/plugin/colors.lua ~/.dotfiles/nvim/after/plugin/colors.lua.temp
mv ~/.dotfiles/nvim/after/plugin/colors.lua.bak ~/.dotfiles/nvim/after/plugin/colors.lua
mv ~/.dotfiles/nvim/after/plugin/colors.lua.temp ~/.dotfiles/nvim/after/plugin/colors.lua.bak

plasma-apply-wallpaperimage ~/.dotfiles/wallpapers/$2

kill -SIGUSR1 $KITTY_PID
tmux source-file ~/.dotfiles/tmux/tmux.conf

exit 0
