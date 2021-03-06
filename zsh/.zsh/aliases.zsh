# Basic
# ---------------------------------------------------
alias vi="vim"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="exa"
alias ll="exa -abghHliS"
alias la='exa -l'
alias lla='ls -Gla'
alias df='df -h'
alias less="/usr/share/vim/vim81/macros/less.sh"
alias wttr='() { curl -H "Accept-Language: ${LANG%_*}" wttr.in/"${1:-Tokyo}" }'

alias pb="pbcopy"

alias sshc="less ~/.ssh/config"

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
alias gdc="git show-branch | grep '*' | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -1 | awk -F'[]~^[]' '{print $2}'"

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

# Docker aliases
# ---------------------------------------------------
alias dk="docker"
alias ds="docker ps"
alias dkpa="docker ps -a"
alias dcl="docker logs -f"
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

# mp3
# ---------------------------------------------------
alias mp3="youtube-dl --extract-audio --audio-format mp3 -o '~/Youtube/%(title)s.%(ext)s'"

sslfile () {
  openssl enc -e -aes-256-cbc -salt -k $1 -in $2 -out $3
}

# Django
# ---------------------------------------------------
alias django-new="django-admin startproject"
alias django-s="python manage.py runserver"
alias django-app="python manage.py startapp"
alias django="python manage.py"

# ssh
# ---------------------------------------------------
function _ssh {
  compadd `fgrep 'Host ' ~/.ssh/config | awk '{print $2}' | sort`;
}

# tmux
# ---------------------------------------------------
alias t="tmux"
alias tls="tmux ls"
alias tkill="tmux kill-server"

# alias coronow="curl https://corona-stats.online"
coronow () {
  echo ${"${1}":/$1}
  curl https://corona-stats.online${"${1}":/$1}
}

# aws dynamodb
# ---------------------------------------------------
alias dyb="aws dynamodb"

# evans
# ---------------------------------------------------
alias xicaevans="evans --path ~/go/src --path ~/go/src/github.com/xica/protobuf/proto/ --proto"

alias ecr-login='aws ecr get-login-password | docker login --username AWS --password-stdin $(aws sts get-caller-identity --query 'Account' --output text).dkr.ecr.ap-northeast-1.amazonaws.com'

# kubernetes
# ---------------------------------------------------
alias ktl="kubectl"

# minikube
# ---------------------------------------------------
alias mk="minikube"
alias mks="minikube start --driver=hyperkit"
alias mkd="minikube delete"
