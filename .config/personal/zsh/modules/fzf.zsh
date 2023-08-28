export FZF_DEFAULT_OPTS="--bind 'ctrl-d:preview-down,ctrl-u:preview-up' \
    --bind 'ctrl-p:toggle-preview' \
    --layout=reverse --border=rounded --margin 1% \
    --no-info --prompt='❯ ' --pointer=➜ \
    --color=bg+:-1,pointer:#ff79c6"

c () {
    local label="SELECT DIRECTORY"
    local dir=$(fd --type directory --hidden | fzf --height=50% --border-label="╢ $label ╟" --border-label-pos=bottom)
    [[ $dir != "" ]] && cd $dir
}

ff () {
    local label="SELECT FILE"
    local file_path=$(fd --type file --hidden | fzf --height=50% --border-label="╢ $label ╟" --border-label-pos=bottom --preview 'bat --style=numbers --color=always --line-range :500 {}')
    [[ $file_path != "" ]] && nvim $file_path
}
