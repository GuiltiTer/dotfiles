function lzyadm() {
	cd ~
	yadm enter lazygit
	cd -
}

function prox() {
    local server
    server="$(<~/.config/proxy_server.txt)" || return

    HTTP_PROXY="$server" \
    HTTPS_PROXY="$server" \
    ALL_PROXY="$server" \
    http_proxy="$server" \
    https_proxy="$server" \
    all_proxy="$server" \
    command "$@"
}

function prox_set() {
    local server
    server="$(<~/.config/proxy_server.txt)" || return

    export HTTP_PROXY="$server"
    export HTTPS_PROXY="$server"
    export ALL_PROXY="$server"

    export http_proxy="$server"
    export https_proxy="$server"
    export all_proxy="$server"

    print "Proxy enabled: $server"
}

function prox_unset() {
    unset HTTP_PROXY HTTPS_PROXY ALL_PROXY
    unset http_proxy https_proxy all_proxy

    print "Proxy disabled"
}

function yazi_keep_cwd() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
