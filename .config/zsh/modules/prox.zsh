PROX_DIR="$HOME/.config/proxies"

function prox_set() {
    local name="$1"

    if [[ -z "$name" ]]; then
        print -u2 "usage: prox_set <profile>"
        return 1
    fi

    local server="$(<"$PROX_DIR/$name")" || {
        print -u2 "proxy profile not found: $name"
        return 1
    }

    export HTTP_PROXY="$server"
    export HTTPS_PROXY="$server"
    export ALL_PROXY="$server"

    export http_proxy="$server"
    export https_proxy="$server"
    export all_proxy="$server"

    export CURRENT_PROXY="$name"

    print "$name -> $server"
}

function prox_unset() {
    unset HTTP_PROXY HTTPS_PROXY ALL_PROXY
    unset http_proxy https_proxy all_proxy
    unset CURRENT_PROXY

    print "Proxy disabled"
}

function prox_list() {
    for file in "$PROX_DIR"/*(N.); do
      print "${file:t} -> $(<$file)"
    done
}

function prox_status() {
    if [[ -n "$CURRENT_PROXY" ]]; then
        print "$CURRENT_PROXY -> "$HTTP_PROXY""
    else
        print "No proxy enabled"
    fi
}

function prox_pick() {
    choice=$(
        for file in "$PROX_DIR"/*(N.); do
            print "${file:t} -> $(<$file)"
        done | sk
    ) || return

    local profile="${choice%% *}"  # get the first word

    if [ -n "$profile" ]; then
        prox_set "$profile"
    fi
}
