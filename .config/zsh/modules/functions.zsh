function lzyadm() {
	cd ~
	yadm enter lazygit
	cd -
}

function prox() {
	local server=$(cat ~/.config/proxy_server.txt)
	eval "HTTPS_PROXY='$server' HTTP_PROXY='$server' $@"
}

function yazi_keep_cwd() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
