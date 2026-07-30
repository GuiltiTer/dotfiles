setopt HIST_IGNORE_ALL_DUPS
bindkey -v
export KEYTIMEOUT=10

eval "$(/opt/homebrew/bin/brew shellenv)"

#cargo
. "$HOME/.cargo/env"

# go
export GOPATH="$HOME/go"
typeset -gU path PATH
path+=("$GOPATH/bin")

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"
