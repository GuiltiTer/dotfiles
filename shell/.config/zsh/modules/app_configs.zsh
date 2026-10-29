# opam
lazyload ocaml opam dune utop -- '[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null'

# ghcup
lazyload ghcup ghci ghc cabal stack -- '[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"'

# patina
eval "$(zsh-patina activate)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# direnv
eval "$(direnv hook zsh)"

# mise
eval "$(mise activate zsh)"

#cargo
. "$HOME/.cargo/env"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

# carapce
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)

# pager
export PAGER=less
export LESS='-FRX'
export MANPAGER=nvimpager
