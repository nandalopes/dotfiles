# [ASDF Version Manager](https://asdf-vm.com/)

Dica de Fabio Akita. Use com [**direnv support**](https://direnv.net/docs/installation.html).

## Setup

```sh
git clone --shallow-since=2020-03-01 -- 'https://github.com/asdf-vm/asdf.git' \
  '~/.asdf'

cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

```

**Fix compinit blaming:**

`compaudit | xargs chmod g-w`

## Versões usadas

### Global

- direnv system

### Projetos

- golang *1.16.x*, *1.13.x*
- nodejs *10.x*, *8.x*, *6.x*
  - yarn *1.22.5*, *1.0.x*
- ruby *2.6.6*, *2.5.x*, *1.8.x*, *1.9.x*
- rust stable

## [Plugins utilizados](https://asdf-vm.com/#/plugins-all)

### [direnv](https://github.com/asdf-community/asdf-direnv.git)

```sh
source ~/.asdf/asdf.sh
asdf shell golang 1.16.x

make
make test
sudo make install PREFIX=/usr/local

mkdir -p ~/.asdf/installs/direnv/system/{bin,env}
ln -nfs /usr/local/bin/direnv ~/.asdf/installs/direnv/system/bin/direnv
```

### [golang](https://github.com/kennyp/asdf-golang.git)

- **direnv compilation support** - version 1.16.x
- fzf compilation support - version 1.13.x

### [nodejs](https://github.com/asdf-vm/asdf-nodejs.git)

- Deps:  
`sudo apt install -y dirmngr gpg`
- <https://github.com/asdf-vm/asdf-nodejs#temporarily-disable-reshimming>

#### [yarn](https://github.com/twuni/asdf-yarn.git)

### [ruby](https://github.com/asdf-vm/asdf-ruby.git)

<https://github.com/rbenv/ruby-build/wiki#suggested-build-environment>

#### Deps (all):

```sh
sudo apt -y install autoconf bison build-essential libssl-dev libyaml-dev \
  libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev \
  libdb-dev
```

#### Deps (no versions):

```sh
sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev \
  libffi-dev libgdbm-dev libdb-dev
```

#### Deps (specific versions):

```sh
sudo apt install -y libreadline6-dev zlib1g-dev libncurses5-dev libgdbm6
```

or

```sh
sudo apt install -y libreadline-dev zlib1g-dev libncurses-dev libgdbm-dev
```

### [rust](https://github.com/code-lever/asdf-rust.git)

- bukubrow-host compilation support
- ripgrep compilation support

