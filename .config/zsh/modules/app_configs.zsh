# mise
eval "$(mise activate zsh)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# opam
lazyload ocaml opam dune utop -- '[[ ! -r /Users/guiltiter/.opam/opam-init/init.zsh ]] || source /Users/guiltiter/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null'

# ghcup
lazyload ghcup ghci ghc cabal stack -- '[ -f "/Users/guiltiter/.ghcup/env" ] && source "/Users/guiltiter/.ghcup/env"'

# curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

# carapce
autoload -Uz compinit && compinit
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)

# local bin
export PATH="/Users/guiltiter/.local/bin:$PATH"

# deja
export DEJA_CYCLE_KEY='^[[Z'
eval "$(deja init zsh)"
