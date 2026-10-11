alias q=exit
alias y=yazi_keep_cwd
alias c=clear
alias h=herdr
alias v=nvim
alias lzg=lazygit
alias cat=bat
alias hs='herdr session attach'
alias ng='nvim "+Neogit kind=replace"'

alias ls='eza -F --group-directories-first'
alias la='eza -F -alh --icons --git --group-directories-first'
alias l='eza -F -lh --icons --git --group-directories-first'
alias lt='eza -F -lh --icons --git --tree'

alias -s json='jless'
alias -s csv='csvlens'
for e (zip rar dmg pdf) alias -s $e='open'
for e (py cpp c++ c h go rs lua toml txt md) alias -s $e='$EDITOR'

local topgrade_managers=(
  self_update
  brew_cask
  brew_formula
  mise
  bun_packages
  rustup
  cargo
  go
  sheldon
  skills
  yazi
  custom_commands
)
alias upgrade="topgrade --only ${topgrade_managers}"
