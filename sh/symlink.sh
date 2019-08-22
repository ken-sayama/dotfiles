#!/bin/bash
# vim
eval "ln -sf ~/dotfiles/vim/vimrc ~/.vimrc"
eval "ln -sf ~/dotfiles/vim ~/.vim"

# zsh
eval "ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc"
eval "ln -sf ~/dotfiles/zsh/zshenv ~/.zshenv"

eval "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh"
eval "sh ~/installer.sh ~/.vim/dein"

# git
eval "ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig"
