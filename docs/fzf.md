# [fzf](https://github.com/junegunn/fzf)

On `fzf.sh` I have functions for version manager install/clean, bookmarks cli
manager, and tmuxp session load.

## Installing

```sh
apt install -y fzf

# OR

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

On file `~/.zsh.after/zz_after.zsh`

```sh
### FZF fuzzy finder
# fzf/install --no-fish --no-update-rc --completion --xdg
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh ] && \
  source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.sh

#export FZF_COMPLETION_TRIGGER=''
#bindkey '^T' fzf-completion
#bindkey '^I' $fzf_default_completion
```

Building from source require golang 1.16.x

