### FZF fuzzy finder
# fzf/install --no-fish --no-update-rc --completion --xdg
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh

### Source ~/.aliases
[ -f ~/.aliases ] && source ~/.aliases

### fix linux prompt
# if [[ $terminfo[colors] == 8 ]]; then prompt skwp; fi
case "$TERM" in
  # xterm*)
  #   ;;
  linux)
    [ -n "$FBTERM" ] && export TERM=fbterm
    prompt skwp
    ;;
esac
# Preview all with `prompt -p`
# Options: adam2 giddie pure steeef elite2 elite restore redhat suse


# ------------------------------------------------
export _DOT_ZSH_PROFILE_1=`date  --rfc-3339=ns`
# ------------------------------------------------
