# env
source ~/.config/zsh/env.zsh

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"
