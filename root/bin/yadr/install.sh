#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=400 --branch=friends --no-single-branch -- \
        https://github.com/nandalopes/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    sh "./install.sh"
else
    echo "YADR is already installed"
fi
