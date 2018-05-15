export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

autoload -U promptinit; promptinit
# プロンプトを変更
prompt pure

setopt auto_cd

zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug "mollifier/anyframe"
zplug "mollifier/cd-gitroot"
# zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "zsh-users/zsh-history-substring-search", hook-build:"__zsh_version 4.3"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "supercrabtree/k"
zplug "junegunn/fzf", use:shell/key-bindings.zsh
zplug "junegunn/fzf", use:shell/completion.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug "paulirish/git-open", as:plugin

: "cd先のディレクトリのファイル一覧を表示する" && {
  [ -z "$ENHANCD_ROOT" ] && function chpwd { tree -L 1 } # enhancdがない場合
  [ -z "$ENHANCD_ROOT" ] || export ENHANCD_HOOK_AFTER_CD="tree -L 1" # enhancdがあるときはそのHook機構を使う
}

: "sshコマンド補完を~/.ssh/configから行う" && {
  function _ssh { compadd $(fgrep 'Host ' ~/.ssh/*/config | grep -v '*' |  awk '{print $2}' | sort) }
}

# compinit 以降に読み込むようにロードの優先度を変更する
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load --verbose


# export関連は以下に
export XDG_CONFIG_HOME="$HOME/.config"
export TERM=xterm-256color
export PATH="/usr/local/bin:$PATH"

# personal alias settings
alias vi="vim"
alias sketch="open -a sketch"
alias ev="open -a evernote"
alias la="ls -la"
alias less="/usr/share/vim/vim80/macros/less.sh"

# git alias settings
alias gs="git status"
alias gb="git checkout -b"
alias gm="git checkout master"
alias gadd="git add ."
alias gcm="git commit -m"
alias gp="git push origin"
alias gl="git log --graph --pretty=oneline"

alias dc="docker-compose"
alias du="docker-compose up -d"
alias dd="docker-compose down -v"
alias ds="docker ps"
alias da="docker attach"
de () { docker exec -it $1 /bin/bash  }

# npm
export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/Applications/MAMP/bin/php/php7.1.8/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$PATH:/Users/kensayama/.config/composer/vendor/bin"
