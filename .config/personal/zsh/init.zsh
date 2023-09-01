local configs=(
    "env"
    "zim"
    "alias"
    "app_configs"
    "functions"
    "fzf"
    "conda_selector"
)

local modules_path=$(dirname "$0")/modules
for c in $configs; do
    source "$modules_path/$c.zsh"
done

arch_conda_selector
