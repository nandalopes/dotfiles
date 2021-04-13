# Dicas de configuração

- <http://profjulianoramos.com.br/blog/desktop/linux/2020/06/12/armazenamentonuvemlinux.html>
- <http://profjulianoramos.com.br/blog/ubuntu/2020/06/10/removersnapubuntu.html>

# System

## [User perms](users.md)

- **Normal**: `sudo usermod -aG "users" <username>`
- **Da instalação**: `sudo usermod -aG "cdrom,audio,dip,video,plugdev,lxd,sambashare" <username>`
- **Admin**: `sudo usermod -aG "adm,sudo" <username>`

## [Chezmoi](chezmoi.md)

Necessário ter o GPG já instalado e configurado.

```sh
cd ~/.local

wget https://git.io/chezmoi -O - | sh
# OR...
curl -sfL https://git.io/chezmoi | sh

~/.local/bin/chezmoi init git@gitlab.com:nandalopes/dotfiles.git
# Defaults:
# - my_bin_dir=$HOME/bin
# - Keybase=n
# - Base_do_IPv4=10.0.10
# - thefuck=please

~/.local/bin/chezmoi diff

~/.local/bin/chezmoi apply -v
```

## VIM dotfiles

```sh
sudo apt install -y curl zsh rake git vim vim-gtk

git clone --branch=gh-pages --no-single-branch -- \
  https://github.com/nandalopes/dotfiles-yadr.git ~/Projects/gh-pages-yadr
git clone --branch=mine --no-single-branch -- \
  https://github.com/nandalopes/dotfiles-yadr.git ~/.yadr

cd ~/.yadr
ASK="true" rake install
```

## Flatpak suport

```sh
# PPA Opcional
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt install flatpak

flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --system remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Then, restart

## Python3 PIP support

`sudo apt install -y python3-pip virtualenv`

docker-compose deps:

_texttable, dockerpty, python-dotenv, docopt, cached-property, websocket-client,
jsonschema, docker, docker-compose_

`sudo apt install -y python3-bcrypt python3-nacl python3-paramiko`

## AppImageLauncher

<https://github.com/TheAssassin/AppImageLauncher/wiki/Install-on-Ubuntu-or-Debian>

```sh
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt install appimagelauncher
```

# Programas úteis

## KeepassXC

- AppImage: <https://keepassxc.org/download/#linux>
- PPA: `sudo add-apt-repository ppa:phoerious/keepassxc`

## Github

<https://cli.github.com/>

```sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0

sudo tee /etc/apt/sources.list.d/github.list << EOP
deb https://cli.github.com/packages $(lsb_release -cs) main
# deb-src https://cli.github.com/packages $(lsb_release -cs) main
EOP

sudo apt update && sudo apt install gh
```

## Docker

- <https://docs.docker.com/engine/install/ubuntu/>
- <https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository>
- <https://get.docker.com/>
- <https://docs.docker.com/engine/install/linux-postinstall/>

```sh
sudo apt install \
  apt-transport-https \
  ca-certificates \
  curl \
  gpg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo tee /etc/apt/sources.list.d/docker.list << EOP
deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable
EOP

sudo apt-get update && \
  sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker your-user
```

### Docker Compose

Obs: **depende do Python3 PIP**

```sh
cd <my_bin_dir>
virtualenv --system-site-packages --symlink-app-data --clear venv

./venv/bin/pip install --upgrade docker-compose

ln -s $PWD/venv/bin/docker-compose ~/.local/bin/docker-compose
```

### VirtualBox

- <https://www.virtualbox.org/wiki/Downloads>
- <https://download.virtualbox.org/virtualbox/debian/dists/>

```sh
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc \
  --directory-prefix=/etc/apt/trusted.gpg.d

sudo tee /etc/apt/sources.list.d/vbox.list << EOP
deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian \
focal \
contrib
EOP

sudo apt update && sudo apt install virtualbox-6.1
```

## Fontes de sistema

- fonts-comfortaa
- fonts-emojione
- fonts-noto-mono
- fonts-powerline

## Icones de sistema

- papirus-icon-theme

## Gerenciador de favoritos [BuKu](https://github.com/jarun/buku)

```sh
pip3 install --user --upgrade buku
mkdir -p ~/.local/share/buku
ln -nf ~/Dropbox/Docs/buku-bookmarks.db ~/.local/share/buku/bookmarks.db
```

Integração com navegadores (opcional) [BuKuBrow](https://github.com/SamHH/bukubrow-host)

<https://dev.azure.com/samhhweb/bukubrow/_build>

```sh
# Para compilar
sudo apt install cargo
# ou use
# asdf shell rust stable
```

## KDE Only

```sh
sudo apt install -y dolphin-plugins doublecmd-qt kdeutils kbackup kfind \
  ktorrent kshutdown kteatime libreoffice-kf5 kubuntu-restricted-extras \
  qt5-style-kvantum plasma-discover-backend-flatpak
```

## Outros

```sh
sudo apt install -y sirikali redshift-gtk gammastep libdvd-pkg ripgrep doublecmd

sudo apt install -y git-lfs git-gui git-secrets exuberant-ctags htop ffmpeg

sudo apt install -y luckybackup pdfmod libreoffice-l10n-pt-br openjdk-14-jdk \
  diceware speedtest-cli apt-file ddclient mediainfo-gui audacity zsync
```

Intel media stack: <https://github.com/Intel-Media-SDK/MediaSDK/wiki/Intel-media-stack-on-Ubuntu>

`sudo apt install -y libmfx-tools libva-glx2 intel-media-va-driver-non-free`

Programas q instalam e configuram listas apt:

```sh
sudo apt install -y ./google-chrome-stable*.deb \
  ./keybase*.deb ./spideroakone*.deb \
  ./zoom_amd64.deb ./mendeleydesktop*.deb
```

# Media

## Youtube-DL

```sh
sudo -H pip3 install --upgrade youtube_dl
```

## MPV

- Master branch: `sudo add-apt-repository ppa:mc3man/mpv-tests`

## Open Broadcast Studio

- <https://obsproject.com/pt-br/download>
- <https://obsproject.com/wiki/install-instructions#linux>

PPA: `sudo add-apt-repository ppa:obsproject/obs-studio`

# Work

## LaTeX

- TexStudio: `sudo add-apt-repository ppa:sunderme/texstudio`
- TexWorks: `sudo add-apt-repository ppa:texworks/stable`

`sudo apt install -y texstudio texlive-extra-utils texlive-lang-portuguese \
  texlive-publishers`

## Graphic

- <https://blog.prototypr.io/design-on-linux-figma-fontbase-10-other-tools-ec2d949cbb69>
- <https://inkscape.org/release/inkscape-1.0.1/gnulinux/ubuntu/ppa/dl/>

- Figma (AppImage):
  - <https://github.com/Figma-Linux/figma-linux/releases>
- Inkscape: 
  - `sudo add-apt-repository ppa:inkscape.dev/stable`
  - `sudo apt install inkscape`
- Gimp (Flatpak):
  - `flatpak install org.gimp.GIMP org.gimp.GIMP.Plugin.FocusBlur \
  org.gimp.GIMP.Plugin.Resynthesizer org.gimp.GIMP.Plugin.GMic`
- Draw.IO (AppImage):
  - <https://github.com/jgraph/drawio-desktop/releases>
- Kdenlive (AppImage):
  - <https://kdenlive.org/en/download/>
- Shotcut:
  - `flatpak install org.shotcut.Shotcut`
- Scribus:
  - `flatpak install net.scribus.Scribus`

## NodeJS

- <https://github.com/nodesource/distributions#installation-instructions>

```sh
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
```

Ou então [asdf](asdf.md).

## Outros

- Wakatime: `sudo -H pip3 install --upgrade wakatime`
- Toggl Track flatpak: `flatpak install com.toggl.TogglDesktop`
