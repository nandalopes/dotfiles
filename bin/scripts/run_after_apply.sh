#!/usr/bin/env bash

# Permitir diretorios
# Geral
chmod go+x $HOME
[ -d ~/Projects/www/devilbox ] && \
  chacl -d u::rwx,g::rwx,o::r-x ~/Projects/www/devilbox

# Permitir arquivos

if [ "$USER" != "nanda" ]; then
  compfix=(
    .asdf
    .local
    .local/share/zsh
    .local/share/zsh/site-functions
  )
  # Corrigir compaudit
  for fp in ${compfix[@]}; do
    # echo "$HOME/$fp"
    chmod go-w "$HOME/$fp"
  done
fi

if [ "$HOST" == "home-PC-N" ]; then
  # Time changes
  touch -d "2003-07-03 03:45 -0300" -m ~/Desktop/Home.desktop
  touch -d "2004-07-03 03:45 -0300" -m ~/Desktop/trash.desktop
fi

exit 0
