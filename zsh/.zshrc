# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:/opt/nvim-linux64/bin"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/usr/bin/Postman"
export PATH="$PATH:/usr/local/go/bin"

# Aliases
alias v="nvim"
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias fd='fdfind'
alias ec="$EDITOR $HOME/.zshrc" # edit .zshrc
alias sc="source $HOME/.zshrc"  # reload zsh configuration

# Set up the prompt - if you load Theme with zplugin as in this example, this will be overriden by the Theme. If you comment out the Theme in zplugins, this will be loaded.
#autoload -Uz promptinit
#promptinit
#prompt adam1            # see Zsh Prompt Theme below

# Use vi keybindings even if our EDITOR is set to vi
bindkey -e

setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# zplug - manage plugins
source /usr/share/zplug/init.zsh && zplug update > /dev/null
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "jeffreytse/zsh-vi-mode"
zplug "marlonrichert/zsh-autocomplete"
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme   # Theme
zplug "romkatv/powerlevel10k", as:theme, depth:1

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check ; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

function sf() {
    cd `fd --type d -p 'seyves/personal|seyves/work|seyves/.dotfiles' ~/ | fzf` && tmux new-session -A -s `basename "$PWD"`
}

function itl-app-sync() {
    sshpass -p "root" rsync -avz -e 'ssh' --exclude='media/vue/node_modules' --exclude='media/vue/.dev' --exclude='.git' /home/seyves/work/webapp root@core-dev.$1.kube.itoolabs:/root
    sshpass -p "root" ssh root@centrex-1.$1.kube.itoolabs 'exec /usr/local/bin/centrex-configure -log -install-app '\''file "/root/webapp"'\'''
}
function itl-app-clear() {
    rsync -avh --exclude 'media/vue/node_modules' --exclude='media/vue/.dev' --exclude='.git' --delete-excluded /home/seyves/work/webapp root@core-dev.$1.kube.itoolabs:/root --delete
}
function itl-vpn() {
    sudo openvpn --config /etc/openvpn/client/client.ovpn 
}
function itl-dev() {
    ssh -A root@docker-dev.itoolabs
}

