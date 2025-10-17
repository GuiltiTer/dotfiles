eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(zoxide init --cmd cd zsh)"

lazyload ocaml opam dune utop -- '[[ ! -r /Users/guiltiter/.opam/opam-init/init.zsh ]] || source /Users/guiltiter/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null'

lazyload ghcup ghci ghc cabal stack -- '[ -f "/Users/guiltiter/.ghcup/env" ] && source "/Users/guiltiter/.ghcup/env"'

export PATH="/opt/homebrew/opt/curl/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
lazyload pyenv -- 'eval "$(pyenv init -)"'

eval "$(direnv hook zsh)"

source <(fzf --zsh)

lazyload conda -- 'conda_init'

export PATH="$PATH:/Users/guiltiter/.local/bin" # pipx

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:/Users/guiltiter/Library/Application Support/JetBrains/Toolbox/scripts"

export MODULAR_HOME="$HOME/.modular"
export PATH="$HOME/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
	. '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)
