# [ASDF](https://github.com/junegunn/fzf/wiki/Examples#asdf)

# Install one or more versions of specified language
# e.g. `vmi rust` # => fzf multimode, tab to mark, enter to install
# if no plugin is supplied (e.g. `vmi<CR>`), fzf will list them for you
# Mnemonic [V]ersion [M]anager [I]nstall
vmi() {
  local lang=${1}

  if [[ ! $lang ]]; then
    lang=$(asdf plugin-list | fzf)
  fi

  if [[ $lang ]]; then
    local versions=$(asdf list-all $lang | fzf --no-sort --tac --multi)
    if [[ $versions ]]; then
      for version in $(echo $versions); do
      asdf install $lang $version; done
    fi
  fi
}

# Remove one or more versions of specified language
# e.g. `vmi rust` # => fzf multimode, tab to mark, enter to remove
# if no plugin is supplied (e.g. `vmi<CR>`), fzf will list them for you
# Mnemonic [V]ersion [M]anager [C]lean
vmc() {
  local lang=${1}

  if [[ ! $lang ]]; then
    lang=$(asdf plugin-list | fzf)
  fi

  if [[ $lang ]]; then
    local versions=$(asdf list $lang | fzf --multi)
    if [[ $versions ]]; then
      for version in $(echo $versions); do
        echo asdf uninstall $lang $version
        asdf uninstall $lang $version
      done
    fi
  fi
}


# BUKU bookmark manager
# get bookmark ids
get_buku_ids() {
  buku -p -f 5 | fzf --tac --layout=reverse-list -m | \
    cut -d $'\t' -f 1
  # awk -F= '{print $1}'
  # cut -d $'\t' -f 1
}

# buku open
fbo() {
  # save newline separated string into an array
  ids=( $(get_buku_ids) )
  [[ -z $ids ]] && return 0 # return if has no bookmark selected
  echo buku --open ${ids[@]}
  buku --open ${ids[@]}
}

# buku update
fbu() {
  # save newline separated string into an array
  ids=( $(get_buku_ids) )
  [[ -z $ids ]] && return 0 # return if has no bookmark selected
  echo buku --update ${ids[@]} $@
  buku --update ${ids[@]} $@
}

# buku write
fbw() {
  # save newline separated string into an array
  ids=( $(get_buku_ids) )
  # print -l $ids

  # update websites
  for i in ${ids[@]}; do
    echo buku --write $i
    buku --write $i
  done
}

# Tmuxp profiles
ftmux() {
  tprofiles=( $(find ${XDG_CONFIG_HOME:-$HOME/.config}/tmuxp -type f \
    -printf "%P\n" | cut -d\. -f1 | fzf --multi --query="$1") )
  tmuxp load "${tprofiles[@]}"
}

