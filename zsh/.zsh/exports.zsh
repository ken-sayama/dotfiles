# global
export LANG=ja_JP.UTF-8
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug

# xterm
export XDG_CONFIG_HOME="$HOME/.config"
export TERM=xterm-256color

# Nodejs
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/sls/node_modules/.bin/:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# golang
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# PHP
export PATH="$PATH:/Users/kensayama/.config/composer/vendor/bin"

# FZF
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# direnv
export EDITOR=vi
eval "$(direnv hook zsh)"

# expo
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
