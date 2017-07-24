#!/bin/sh

echo "installing homebrew setup..."

which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."

which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "run brew upgrade..."
brew upgrade --all

formulas=(
  autoconf
  automake
  cmake
  gdbm
  gettext
  git
  git-flow
  icu4c
  jemalloc
  libevent
  libtermkey
  libtool
  libuv
  libvterm
  libyaml
  msgpack
  neovim
  node
  nodebrew
  openssl
  pcre
  perl
  pkg-config
  python
  python3
  rbenv
  readline
  ruby
  ruby-build
  tig
  tmux
  unibilum
  vim
  xz
  zsh
  zsh-completions
)

