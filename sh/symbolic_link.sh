#!/usr/local/bin/bash

FILES=(
.vim ~/.vim
.vim/.vimrc ~/.vimrc
bash/.bash_profile ~/.bash_profile
zsh/.zshrc ~/.zshrc
zsh/.zshenv ~/.zshenv
)


for FILE in ${FILES[@]};
do
  eval "ln -sf ~/dotfiles/$FILE";
done
