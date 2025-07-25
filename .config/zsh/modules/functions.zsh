function lzyadm() {
	cd ~
	yadm enter lazygit
	cd -
}

function prox() {
	local server=$(cat ~/.config/proxy_server.txt)
	eval "HTTPS_PROXY='$server' HTTP_PROXY='$server' $@"
}
