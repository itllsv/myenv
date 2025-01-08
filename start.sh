#!/bin/bash

cd $HOME/setup-env/
source ./utils.sh
scripts_dir="./scripts"

print_line "Updating..."
sudo dnf update -y

if [ -d "$scripts_dir" ]; then
  for script in "$scripts_dir"/*.sh; do
    if [ -f "$script" ]; then
      print_line "Executing $script..."
      sudo chmod +x "$script"
      ./"$script"
    fi
  done
else
  echo "./scripts dir not found."
fi

print_line "Acabou meu fio!"
