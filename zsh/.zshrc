# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kensayama/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jonathan"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby osx bundler brew rails emoji-clock)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

function git(){hub "$@"}
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
dir=~/.oh-my-zsh/custom/plugins/zsh-completions/src
if [ -e $dir ]; then
fpath=($dir $fpath)
plugins=(zsh-completions git ruby osx bundler brew rails emoji-clock)
autoload -U compinit && compinit
fi

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
alias gc="git checkout"
alias gcb="git checkout -b"
alias gadd="git add ."
alias gcm="git commit -m"
alias gp="git push origin"
alias gl="git log --graph --pretty=oneline"

alias dc="docker-compose"
alias du="docker-compose up -d"
alias dd="docker-compose down -v"
alias ds="docker ps"
alias da="docker attach"

# scp
alias scpkaigo="scp kaigo:/home/ec2-user/kaigo_dump.sql /Users/kensayama/Desktop"
alias scpdeco="scp deco:/home/ec2-user/deco_dump.sql /Users/kensayama/Desktop"
alias scph="scp hoiku:/home/ec2-user/hservice_dump.sql /Users/kensayama/Desktop"

# npm
export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=/Applications/MAMP/bin/php/php7.1.8/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
