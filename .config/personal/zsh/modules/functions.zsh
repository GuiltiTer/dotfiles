vpn () {
    local LOCK=${TMPDIR}SSHUTTLE_LOCK
    touch $LOCK
    [[ $1 == clean ]] && rm $LOCK && return
    [[ $1 == k* ]] && [[ $(cat $LOCK) == "" ]] && echo "No Active Process." && return
    [[ $1 == k* ]] && kill -TERM -- -$(cat $LOCK) && echo "" >| $LOCK && echo "Killed." && return
    [[ $(cat $LOCK) != "" ]] && echo "Process Is Active." && return
    typeset -A servers
    local servers=(Default "root@23.95.68.207:35110" Khashi "root@192.3.85.132")
    local sshuttle_template="sshuttle --dns -r %s 0/0 --python python3.11 --no-latency-control"
    local selected=$(gum choose ${(@k)servers})
    [[ $selected == "" ]] && return
    local cmd=$(printf $sshuttle_template $servers[$selected])
    eval $cmd 2> /dev/null &
    local SSHUTTLE_PID=$!
    echo $SSHUTTLE_PID >| $LOCK
}

lzyadm() {
    cd ~
    yadm enter lazygit
    cd -
}

upall() {
    brew upgrade
    pipx upgrade-all
}
