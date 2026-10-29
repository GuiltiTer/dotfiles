typeset -gU path PATH

# opts
setopt HIST_IGNORE_ALL_DUPS

# XDG config
export XDG_CONFIG_HOME="$HOME/.config"

# editor
export EDITOR=/opt/homebrew/bin/nvim
export VISUAL=$EDITOR

# vi mode
bindkey -v
export KEYTIMEOUT=10

# pager
export PAGER=less
export LESS='-FRX'
export MANPAGER=/opt/homebrew/bin/nvimpager

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# cargo
. "$HOME/.cargo/env"

# local bin
path+=("$HOME/.local/bin")

# go
export GOPATH="$HOME/go"
path+=("$GOPATH/bin")

# bun
path+=("/Users/guiltiter/.bun/bin")

# curl
path+=("/opt/homebrew/opt/curl/bin")

# obsidian
path+=("/Applications/Obsidian.app/Contents/MacOS")
