- [Configurações de sistema](#configurações-de-sistema)
  - [Desktop](#desktop)
  - [Directory](#directory)
  - [Editors](#editors)
    - [Codium](#codium)
  - [Icon](#icon)
  - [System](#system)
    - [Apt](#apt)

# Configurações de sistema

## Icon

```sh
xdg-icon-resource install [--noupdate] [--novendor] [--theme theme]
                          [--context context] [--mode mode]
                          --size size icon-file [icon-name]

xdg-icon-resource install --novendor --mode user --context apps --size 256 \
                          icon/cmaptools.png CmapTools
```

## Desktop

```sh
xdg-desktop-menu install [--noupdate] [--novendor] [--mode mode]
                         directory-file(s) desktop-file(s)
```

## Directory

```sh
xdg-desktop-menu install [--noupdate] [--novendor] [--mode mode]
                         directory-file(s) desktop-file(s)

xdg-desktop-menu install --novendor --mode user directory/ufba.directory \
  desktop/CmapTools.desktop

xdg-desktop-menu install --novendor --mode user directory/personal.directory \
  desktop/firefox-default.desktop
```

## Editors

| Programa | Arquivos                      |
| -------- | ----------------------------- |
| Codium   | extensions.txt, settings.json |
| Code     | idem                          |
|          |                               |

### Visual Studio Code

Get extensions:

```sh
# list-extensions
code --list-extensions   | tee editors/code/extensions.txt
codium --list-extensions | tee editors/codium/extensions.txt

# install-extension
xargs -n1 code   --install-extension < editors/code/extensions.txt
xargs -n1 codium --install-extension < editors/codium/extensions.txt
```

OR

```sh
mkdir -p ~/.vscode-oss
cp -r ~/.vscode/extensions ~/.vscode-oss/extensions

mkdir -p ~/.config/VSCodium
cp -r ~/.config/Code/User ~/.config/VSCodium/User
```

## System

| Programa        | Caminho no Repo     | Caminho no sistema                 |
| --------------- | ------------------- | ---------------------------------- |
| ddclient        | s/n/ddclient.conf   | /etc/ddclient.conf                 |
| Network Manager | s/n/resolved.conf   | /etc/systemd/resolved.conf         |
| Network Manager | s/n/ppp-options     | /etc/ppp/options                   |
| Network Manager | s/n/vpn*            | /etc/Net/sys-con/vpn*.nmconnection |
|                 |                     |                                    |

