lzyadm() {
    cd ~
    yadm enter lazygit
    cd -
}


updateall() {
    local echo_style() {
        local yellow='\e[33m'
        local blue='\e[34m'
        local reset='\e[0m'
        local bold='\e[1m'
        echo -e "${bold}${blue}[${yellow}$1${blue}]${reset}"
    }

    local run() {
        local header=$(echo $1 | tr '[:lower:]' '[:upper:]')
        echo_style $header
        "$@"
        print "\e[34m${(l:${$(tput cols)}::⎯:)}"
    }

    run brew upgrade
    run pipx upgrade-all
    run zimfw upgrade
    run zimfw update
    run gup update
    run cargo install-update --all
}
