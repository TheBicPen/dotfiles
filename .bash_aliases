#Alex's bash aliases. Aliases should be located in this file, not in .bashrc.

#controversial ones: placed near the top for easy toggling
alias cd='cd && ls'


#custom stuff

alias config='/usr/bin/git --git-dir=/home/alex/.cloud_cfg/ --work-tree=/home/alex'


#convenience: unlikely to ever be changed
alias la='ls -A'



#default aliases
alias cp="cp -i"                          # confirm before overwriting s>
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less


