_hotkey_counter=0
function _bindkey() {
	local counter=0
	local keymap=$1
	local cmd=$2
	eval "_hotkey_func_$_hotkey_counter() { zle push-input; local BUFFER='$cmd'; zle accept-line }"

	zle -N _hotkey_func_$_hotkey_counter
	bindkey "$keymap" _hotkey_func_$_hotkey_counter
	((_hotkey_counter++))
}

_bindkey "^O" "yazi"
_bindkey "^G" "cd"
