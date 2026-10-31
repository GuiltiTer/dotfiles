typeset -gU path PATH

# XDG config
export XDG_CONFIG_HOME="$HOME/.config"

# editor
export EDITOR=/opt/homebrew/bin/nvim
export VISUAL=$EDITOR

# pager
export PAGER=less
export LESS='-FRX'
export MANPAGER=/opt/homebrew/bin/nvimpager

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
