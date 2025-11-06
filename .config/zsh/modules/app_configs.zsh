# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

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

# fzf
source <(fzf --zsh)

# conda
lazyload conda -- 'conda_init'

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# jetbrains toolbox
export PATH="$PATH:/Users/guiltiter/Library/Application Support/JetBrains/Toolbox/scripts"

# carapce
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

# local bin
export PATH="/Users/guiltiter/.local/bin:$PATH"
