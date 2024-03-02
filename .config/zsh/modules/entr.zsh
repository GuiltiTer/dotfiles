function entrfor() {
    fd "$1" | entr -crsd "time $(printf '% s ' "${@:2}")"
}
