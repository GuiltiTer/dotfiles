alias q=exit
alias a=touch
alias A=mkdir
alias e=ya
alias c=clear
alias s="fzf_dir_do cd"

alias ls='eza -F --group-directories-first'
alias la='eza -F -alh --icons --git --group-directories-first'
alias l='eza -F -lh --icons --git --group-directories-first'

alias v.="nvim ."
alias v=nvim
alias vi=nvim
alias vim=nvim
alias vide=neovide
alias lzd=lazydocker
alias lzg=lazygit
alias cat=bat

alias intel_login='env /usr/bin/arch -x86_64 /bin/zsh --login'

alias packages='brew leaves | fzf'
alias gitignore='npx add-gitignore'
alias icat='kitty +kitten icat'
alias yaegi='rlwrap yaegi'

alias fzedit="fzf_file_do nvim"
alias fzopen="fzf_file_do open"
