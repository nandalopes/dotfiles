# Chezmoi

## Install

```sh
# Optional parameters:
# LOG_LEVEL=3
# BINDIR=$HOME/.local/bin

cd ~/.local

wget https://git.io/chezmoi  -qO- | sh
# OR...
curl -fsSL https://git.io/chezmoi | sh
```

## Apply

```sh
~/.local/bin/chezmoi init --source ~/.dotfiles \
  git@github.com:nandalopes/dotfiles.git

# Defaults:
# - my_bin_dir=$HOME/bin
# - Keybase=n
# - Base_do_IPv4=10.0.10
# - thefuck=fuck

~/.local/bin/chezmoi diff

~/.local/bin/chezmoi apply -v
```

## Completions

### ZSH completions

```zsh
$HOME/.local/bin/chezmoi completion  zsh --output
  $HOME/.local/share/zsh/site-functions/_chezmoi
```

### BASH completions

```bash
$HOME/.local/bin/chezmoi completion bash --output
  $HOME/.local/share/bash-completion/completions/chezmoi.bash
```

