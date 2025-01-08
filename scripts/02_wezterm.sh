#!/bin/bash

sudo dnf copr -y enable wezfurlong/wezterm-nightly
sudo dnf install -y wezterm
gsettings set org.gnome.desktop.default-applications.terminal exec 'wezterm'
