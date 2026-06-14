alias q=exit
alias y=yazi_keep_cwd
alias c=clear

alias ls='eza -F --group-directories-first'
alias la='eza -F -alh --icons --git --group-directories-first'
alias l='eza -F -lh --icons --git --group-directories-first'

alias v=nvim
alias lzg=lazygit
alias cat=bat

alias intel_login='env /usr/bin/arch -x86_64 /bin/zsh --login'

alias packages='brew leaves | fzf'
alias upgrade='topgrade --only brew_cask brew_formula custom_commands yazi go pipx cargo self_update'
alias gitignore='npx add-gitignore'
alias icat='kitty +kitten icat'
alias yaegi='rlwrap yaegi'

alias os='query_to_opencode_server'
alias om='select_opencode_model'


alias -s json='jless'
alias -s csv='csvlens'
for e (zip rar dmg pdf) alias -s $e='openn'
for e (py cpp c++ c h go rs lua toml txt md) alias -s $e='$EDITOR'
