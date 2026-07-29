autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line
bindkey -M vicmd '^E' edit-command-line
