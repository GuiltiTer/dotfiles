# mise
eval "$(mise activate zsh)"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# opam
lazyload ocaml opam dune utop -- '[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null'

# ghcup
lazyload ghcup ghci ghc cabal stack -- '[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"'

# curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# atuin
eval "$(atuin init zsh --disable-up-arrow)"

# carapce
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
source <(carapace _carapace)

# local bin
export PATH="$HOME/.local/bin:$PATH"

# deja
export DEJA_CYCLE_KEY='^[[Z'
eval "$(deja init zsh)"

# obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

# pager
export PAGER=less
export LESS='-FRX'
export MANPAGER=nvimpager
