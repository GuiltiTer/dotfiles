# opam
. $HOME/.opam/opam-init/init.zsh

# ghcup
. "$HOME/.ghcup/env"

# patina
eval "$(zsh-patina activate)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# direnv
eval "$(direnv hook zsh)"

# mise
eval "$(mise activate zsh)"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

# carapce
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)
