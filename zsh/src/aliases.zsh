# Basic
# ---------------------------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls -G"
alias ll="ls -Gl"
alias la='ls -Ga'
alias lla='ls -Gla'
alias df='df -h'
alias less="/usr/share/vim/vim80/macros/less.sh"

# Git aliases
# ---------------------------------------------------
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gb="git checkout -b"
alias gp="git push origin"
alias gm="git checkout master"
alias gl="git log --graph --pretty=oneline"
alias gpl="git pull"

# Docker aliases
# ---------------------------------------------------
alias dk="docker"
alias ds="docker ps"
alias dkpa="docker ps -a"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcr="docker-compose restart"
alias dd="docker-compose down -v"
alias da="docker attach"
de () { docker exec -it $1 /bin/bash  }

# Shopify
# ---------------------------------------------------
alias spy="open https://www.shopify.jp"
alias spyp="open https://www.shopify.jp/partners"

