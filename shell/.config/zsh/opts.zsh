# opts
setopt HIST_IGNORE_ALL_DUPS

# vi mode
bindkey -v
export KEYTIMEOUT=10

function zle-keymap-select {
    case $KEYMAP in
        vicmd)      printf '\e[2 q' ;;
        viins|main) printf '\e[5 q' ;;
    esac
}

function zle-line-init { printf '\e[5 q' }

zle -N zle-keymap-select
zle -N zle-line-init
