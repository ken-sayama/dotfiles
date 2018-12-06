# Basic
# ---------------------------------------------------
alias vi="vim"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls -G"
alias ll="ls -Gl"
alias la='ls -Ga'
alias lla='ls -Gla'
alias df='df -h'
alias less="/usr/share/vim/vim80/macros/less.sh"

alias pb="pbcopy"

# Git aliases
# ---------------------------------------------------
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gb="git checkout -b"
alias gm="git checkout master"
alias gl="git log --graph --pretty=oneline"
gpb () {
  BRANCH=$(git rev-parse --abbrev-ref HEAD)
  git push origin $BRANCH
}
alias gpl="git pull"
alias gd="git diff"

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

# create-react-app
# ---------------------------------------------------
alias react="create-react-app"

# npm
# ---------------------------------------------------
alias ni="npm install"
alias ns="npm start"

# Shopify
# ---------------------------------------------------
alias spy="open https://www.shopify.jp"
alias spyp="open https://www.shopify.jp/partners"

# ngrok
# ---------------------------------------------------
n () {
  ngrok http -subdomain=$1 ${"${2}":-3000}
}
