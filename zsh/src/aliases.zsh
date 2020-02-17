# Basic
# ---------------------------------------------------
alias vi="vim"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
# alias cdd="fzf-cdr"
# fzf-cdr () {
#   target_dir=`cdr -l | sed 's/^[^ ][^ ]*  *//' | fzf`
#   target_dir=`echo ${target_dir/\~/$HOME}`
#   if [ -n "$target_dir" ]; then
#     cd $target_dir
#   fi
# }
# autoload -Uz is-at-least
# if is-at-least 4.3.11
# then
#   autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
#   add-zsh-hook chpwd chpwd_recent_dirs
#   zstyle ':chpwd:*'      recent-dirs-max 500
#   zstyle ':chpwd:*'      recent-dirs-default yes
#   zstyle ':completion:*' recent-dirs-insert both
# fi

alias ls="ls -G"
alias ll="ls -Gl"
alias la='ls -Ga'
alias lla='ls -Gla'
alias df='df -h'
alias less="/usr/share/vim/vim80/macros/less.sh"

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

