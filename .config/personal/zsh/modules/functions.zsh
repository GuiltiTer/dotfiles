lzyadm() {
    cd ~
    yadm enter lazygit
    cd -
}

updateall() {
    echo "[BREW]"
    brew upgrade
    echo "[PIPX]"
    pipx upgrade-all
    echo "[ZIM]"
    zimfw upgrade && zimfw update
    echo "[GUP]"
    gup update
}
