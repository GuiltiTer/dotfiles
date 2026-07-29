export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=/opt/homebrew/bin/nvim
export VISUAL=/opt/homebrew/bin/nvim
export KEYTIMEOUT=10

setopt HIST_IGNORE_ALL_DUPS
bindkey -v

autoload -Uz compinit && compinit
