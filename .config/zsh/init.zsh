eval "$(/opt/homebrew/bin/brew shellenv)"

#cargo
. "$HOME/.cargo/env"

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# sheldon
eval "$(sheldon source)"

# starship
eval "$(starship init zsh)"
