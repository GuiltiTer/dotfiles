export FZF_DEFAULT_OPTS="--bind 'ctrl-d:preview-down,ctrl-u:preview-up' \
    --bind 'ctrl-p:toggle-preview' \
    --layout=reverse --border=rounded --margin 1% \
    --no-info --prompt='❯ ' --pointer=➜ \
    --color=bg+:-1,pointer:#ff79c6"

function fzf_dir_do() {
	local label="SELECT DIRECTORY"
	local dir=$(fd --type directory --hidden -d 10 | fzf --height=50% --border-label="╢ $label ╟" --border-label-pos=bottom)
	[[ $dir != "" ]] && $1 $dir
}

function fzf_file_do() {
	local label="SELECT FILE"
	local preview='bat --style=numbers --color=always --line-range :500 {}'
	local file_path=$(fd --type file --hidden -d 10 | fzf --height=50% --border-label="╢ $label ╟" --border-label-pos=bottom --preview $preview)
	[[ $file_path != "" ]] && $1 $file_path
}
