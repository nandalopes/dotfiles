# Chezmoi

```sh
cd ~/.local

wget https://git.io/chezmoi -O - | sh
# OR...
curl -sfL https://git.io/chezmoi | sh

~/.local/bin/chezmoi init https://github.com/nandalopes/dotfiles.git
# Defaults:
# - my_bin_dir=$HOME/bin
# - Keybase=n
# - Base_do_IPv4=10.0.10
# - thefuck=please

~/.local/bin/chezmoi diff

~/.local/bin/chezmoi apply -v
```
### Install

With wget:  
`
wget 'https://git.io/chezmoi' -O - | LOG_LEVEL=3 BINDIR=$HOME/.local/bin sh
`

With curl:  
`
curl -sfL 'https://git.io/chezmoi' | LOG_LEVEL=3 BINDIR=$HOME/.local/bin sh
`

### Completions

**ZSH completions**
`
$HOME/.local/bin/chezmoi completion  zsh --output
  $HOME/.local/share/zsh/site-functions/_chezmoi
`

**BASH completions**
`
$HOME/.local/bin/chezmoi completion bash --output
  $HOME/.local/share/bash-completion/completions/chezmoi
`

