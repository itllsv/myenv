#!/bin/bash

sudo dnf config-manager setopt google-chrome.enabled=1
sudo dnf install google-chrome-stable -y
