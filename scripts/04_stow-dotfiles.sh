#!/bin/bash

sudo dnf install -y stow

REPO="git@github.com:itallosavieira/dotfiles.git"
DEST_DIR="$HOME/dotfiles"

git clone $REPO $DEST_DIR

cd $DEST_DIR
stow -v -R -t $HOME --ignore='\.bak' *
