alias q=exit
alias y=yazi
alias c=clear

alias ls='eza -F --group-directories-first'
alias la='eza -F -alh --icons --git --group-directories-first'
alias l='eza -F -lh --icons --git --group-directories-first'

alias v=nvim
alias lzg=lazygit
alias cat=bat

alias intel_login='env /usr/bin/arch -x86_64 /bin/zsh --login'

alias packages='brew leaves | fzf'
alias upgrade='topgrade --only brew_cask brew_formula custom_commands go pipx cargo self_update'
alias gitignore='npx add-gitignore'
alias icat='kitty +kitten icat'
alias yaegi='rlwrap yaegi'
