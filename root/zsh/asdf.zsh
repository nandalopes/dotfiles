### ASDF Config
if [ -d "${ASDF_DIR:-$HOME/.asdf}" ]; then
  ASDF_DIR="${ASDF_DIR:-$HOME/.asdf}"
  ASDF_DATA_DIR="${ASDF_DATA_DIR:-$ASDF_DIR}"
  export ASDF_DIR ASDF_DATA_DIR
fi

##### Direnv
# direnv hook zsh
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]; then
  source ${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc
fi
