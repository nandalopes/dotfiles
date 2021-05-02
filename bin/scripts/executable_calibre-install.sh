#!/bin/sh

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh \
  | sudo sh /dev/stdin install_dir=/opt/ share_dir=/usr/local/share/ \
  bin_dir=/usr/local/bin/

