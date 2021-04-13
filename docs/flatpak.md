# System

```sh
flatpak --system remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak --installation=default install flathub \
  org.gimp.GIMP org.gimp.GIMP.Plugin.FocusBlur \
  org.gimp.GIMP.Plugin.Resynthesizer org.gimp.GIMP.Plugin.GMic \
  com.github.artemanufrij.regextester com.stremio.Stremio \
  com.toggl.TogglDesktop net.scribus.Scribus org.filezillaproject.Filezilla \
  org.shotcut.Shotcut

# flatpak pin --remove runtime/org.gimp.GIMP.Plugin.GMic/x86_64/2-3.36
```

# User

```sh
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak --user install flathub org.telegram.desktop com.discordapp.Discord
```

# Nuvola

```sh
umask 022

sudo mkdir -p /opt/flatpak/nuvola/ext4 /etc/flatpak/installations.d
sudo cp -t /etc/flatpak/installations.d system/flatpaks/nuvola.conf

sudo flatpak --installation=nuvola remote-add --if-not-exists nuvola https://dl.tiliado.eu/flatpak/nuvola.flatpakrepo
sudo flatpak --installation=nuvola remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak --installation=nuvola install nuvola eu.tiliado.Nuvola \
  eu.tiliado.NuvolaAppDeezer eu.tiliado.NuvolaAppMixcloud \
  eu.tiliado.NuvolaAppSoundcloud eu.tiliado.NuvolaAppYoutubeMusic
```

