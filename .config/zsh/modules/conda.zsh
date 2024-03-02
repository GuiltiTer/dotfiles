function __conda_initialize () {
    local conda_path=$1
    __conda_setup="$('${conda_path}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]
    then
        eval "$__conda_setup"
    else
        if [ -f "${conda_path}/etc/profile.d/conda.sh" ]
        then
            . "${conda_path}/etc/profile.d/conda.sh"
        else
            export PATH="${conda_path}/bin:$PATH"
        fi
    fi
    unset __conda_setup
}

function conda_init() {
    if [[ $(arch) == "i386" ]]; then
        __conda_initialize "/Users/guiltiter/miniconda3_X86"
    else
        __conda_initialize "/Users/guiltiter/miniconda3"
    fi
}
