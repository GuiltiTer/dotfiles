function lzyadm() {
    cd ~
    yadm enter lazygit
    cd -
}


function updateall() {

    function __echo_style() {
        local yellow='\e[33m'
        local blue='\e[34m'
        local reset='\e[0m'
        local bold='\e[1m'
        echo -e "${bold}${blue}[${yellow}$1${blue}]${reset}"
    }

    function __run() {
        __echo_style $1
        eval $1
        print "\e[34m${(l:${$(tput cols)}::⎯:)}"
    }

    __run "brew upgrade"
    __run "pipx upgrade-all"
    __run "zimfw upgrade"
    __run "zimfw update"
    __run "gup update"
    __run "cargo install-update --all"
}

function ya() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
