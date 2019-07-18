#Alex's bash aliases. Aliases should be located in this file, not in .bashrc.

#controversial ones: placed near the top for easy toggling




#custom stuff

alias config='/usr/bin/git --git-dir=/home/alex/.cloud_cfg/ --work-tree=/home/alex'


#convenience: unlikely to ever be changed
alias la='ls -A'
alias ll='ls -l'
alias md='mkdir'
alias cls='clear'


#default aliases
alias cp="cp -i"                          # confirm before overwriting s>
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less


#FUNCTIONS

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}
