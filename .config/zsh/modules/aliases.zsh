alias q=exit
alias y=yazi_keep_cwd
alias c=clear
alias h=herdr
alias hs='herdr session attach'

alias ls='lsd -F --group-directories-first'
alias la='lsd -F -alh --git --group-directories-first'
alias l='lsd -F -lh --git --group-directories-first'
alias lt='lsd -F -lh --icon always --git --tree'

alias v=nvim
alias lzg=lazygit
alias cat=bat

alias intel_login='env /usr/bin/arch -x86_64 /bin/zsh --login'

alias packages='brew leaves | fzf'
alias upgrade='topgrade --only brew_cask brew_formula custom_commands yazi go pipx cargo self_update pi skills sheldon mise'
alias gitignore='npx add-gitignore'
alias icat='kitty +kitten icat'
alias yaegi='rlwrap yaegi'

alias -s json='jless'
alias -s csv='csvlens'
for e (zip rar dmg pdf) alias -s $e='open'
for e (py cpp c++ c h go rs lua toml txt md) alias -s $e='$EDITOR'
