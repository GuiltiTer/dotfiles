# lig pre
eval "$("/opt/homebrew/opt/lig/bin/lig" init zsh pre)"

# options
. $ZDOTDIR/opts.zsh

# autocomplete
autoload -Uz compinit && compinit

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"

# lig post
eval "$("/opt/homebrew/opt/lig/bin/lig" init zsh post)"
