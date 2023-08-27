[[ ! -r /Users/guiltiter/.opam/opam-init/init.zsh ]] || source /Users/guiltiter/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null  # opam

[ -f "/Users/guiltiter/.ghcup/env" ] && source "/Users/guiltiter/.ghcup/env" # ghcup-env

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/curl/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
