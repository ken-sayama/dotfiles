if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')
  call dein#load_toml('~/dotfiles/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/dotfiles/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable
