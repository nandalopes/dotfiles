### FZF fuzzy finder
# fzf/install --xdg --all --no-update-rc \
#   --no-fish
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh

# custom fzf helpers
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf-git.sh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf-git.sh

