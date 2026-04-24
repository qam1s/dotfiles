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

pmin() { sudo snapper create --description "pacman install $*" && sudo pacman -S "$@"; }
pmrm() { sudo snapper create --description "pacman remove $*" && sudo pacman -Rns "$@"; }
pmup() { sudo snapper create --description "pacman update" && sudo pacman -Syu; }
pmse() { sudo pacman -Ss "$@"; }

prin() { sudo snapper create --description "paru install $*" && paru -S "$@"; }
prrm() { sudo snapper create --description "paru remove $*" && paru -Rns "$@"; }
prup() { sudo snapper create --description "paru update" && paru -Syu; }
prse() { paru -Ss "$@"; }

source $ZSH/oh-my-zsh.sh
