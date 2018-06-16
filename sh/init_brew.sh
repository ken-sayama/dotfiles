#!/usr/local/bin/bash

# homebrew packages
BREWS=(
autoconf
bash
cairo
fontconfig
fontforge
freetype
gdbm
gettext
git
git-flow
glib
go
hub
libevent
mysql
node
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
tree
wget
zplug
zsh
zsh-completions
)

for BREW in ${BREWS[@]};
do
  brew install $BREW -y;
done
