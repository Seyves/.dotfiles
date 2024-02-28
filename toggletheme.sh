plasma-apply-colorscheme $1

mv ~/.dotfiles/kitty/current-theme.conf ~/.dotfiles/kitty/current-theme.conf.temp
mv ~/.dotfiles/kitty/current-theme.conf.bak ~/.dotfiles/kitty/current-theme.conf
mv ~/.dotfiles/kitty/current-theme.conf.temp ~/.dotfiles/kitty/current-theme.conf.bak

mv ~/.dotfiles/nvim/after/plugin/colors.lua ~/.dotfiles/nvim/after/plugin/colors.lua.temp
mv ~/.dotfiles/nvim/after/plugin/colors.lua.bak ~/.dotfiles/nvim/after/plugin/colors.lua
mv ~/.dotfiles/nvim/after/plugin/colors.lua.temp ~/.dotfiles/nvim/after/plugin/colors.lua.bak

plasma-apply-wallpaperimage ~/.dotfiles/wallpapers/$2

kill -SIGUSR1 $KITTY_PID
tmux source-file ~/.dotfiles/tmux/tmux.conf

exit 0
