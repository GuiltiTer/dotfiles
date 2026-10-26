typeset -gU path PATH

# opts
setopt HIST_IGNORE_ALL_DUPS
bindkey -v

# vi mode
export KEYTIMEOUT=10

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
