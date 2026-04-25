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

pin() { sudo snapper create --description "install $*" && paru -S "$@"; }
prm() { sudo snapper create --description "remove $*" && paru -Rns "$@"; }
pup() { sudo snapper create --description "update" && paru -Syu; }

source $ZSH/oh-my-zsh.sh
