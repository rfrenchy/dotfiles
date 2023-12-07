# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

source ~/.nvm/nvm.sh

alias py="python3 "

alias whatsmyip="curl ifconfig.me"
alias vpn="sudo openvpn --data-ciphers 'AES-256-CBC' --config /etc/openvpn/ovpn_tcp/$(ls /etc/openvpn/ovpn_tcp | grep -i -e uk | shuf -n 1)"
alias zshrc='nvim ~/.zshrc'
alias nvimrc='nvim ~/.config/nvim/init.lua'
alias cdh='cd ~/dev/punts'

alias anki="/usr/local/bin/anki-23.10.1-linux-qt6/anki &"
alias copy="xclip -selection clipboard"

alias lll="eza --long --tree --level 3"
alias llll="eza --long --tree --level 4"
alias lh="eza-tree 'tools|vendor'"

alias 7zip="7zz "

ZSH_THEME="eastwood"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
DISABLE_MAGIC_FUNCTIONS="true"

# COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/home/ryan/.local/bin"
export PATH="/home/linuxbrew/.linuxbrew/opt/postgresql@16/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/ryan/go/bin:$PATH"
export PATH="/home/ryan/dev/scripts:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

