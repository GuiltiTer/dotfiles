init_conda () {
    conda_path_m1="/Users/guiltiter/miniconda3"
    __conda_setup="$('${conda_path_m1}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]
    then
        eval "$__conda_setup"
    else
        if [ -f "${conda_path_m1}/etc/profile.d/conda.sh" ]
        then
            . "${conda_path_m1}/etc/profile.d/conda.sh"
        else
            export PATH="${conda_path_m1}/bin:$PATH"
        fi
    fi
    unset __conda_setup
}

init_conda_intel () {
    conda_path_intel="/Users/guiltiter/miniconda3_X86"
    __conda_setup="$('${conda_path_intel}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]
    then
        eval "$__conda_setup"
    else
        if [ -f "${conda_path_intel}/etc/profile.d/conda.sh" ]
        then
            . "${conda_path_intel}/etc/profile.d/conda.sh"
        else
            export PATH="${conda_path_intel}/bin:$PATH"
        fi
    fi
    unset __conda_setup
}

arch_conda_selector() {
    if [[ $(arch) == "i386" ]]; then
        init_conda_intel
    else
        init_conda
    fi
}

arch_conda_selector
