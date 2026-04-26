export ZSH=/usr/share/oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
    git
    copypath
    copyfile
    colored-man-pages
    extract
    docker
    docker-compose
)

alias rb="reboot"
alias sdn="shutdown now"

source $ZSH/oh-my-zsh.sh
