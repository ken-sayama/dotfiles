#!/usr/local/bin/bash

# homebrew packages
BREWS=(
autoconf
bash
gdbm
git
git-flow
hub
libevent
openssl
pcre
pkg-config
python
rbenv
readline
ruby-build
sqlite
tig
tmux
zplug
zsh
zsh-completions
)

for BREW in ${BREWS[@]};
do
  echo $BREW;
done
