local configs=(
	"env"
	"ui"
	"zim"
	"alias"
	"app_configs"
	"conda"
	"functions"
	"fzf"
	"entr"
	"keymaps"
)

local modules_path=$(dirname "$0")/modules
for c in $configs; do
	source "$modules_path/$c.zsh"
done
