##!/bin/bash

SSH_KEY_PATH="$HOME/.ssh/id_ed25519"

if [ -f "$SSH_KEY_PATH" ]; then
  echo "SSH key already exists: $SSH_KEY_PATH"
else
  ssh-keygen -t ed25519 -C "itallo.sa.vieira@gmail.com"
  eval "$(ssh-agent -s)"
  ssh-add "$SSH_KEY_PATH"
  echo "SSH key created and added to the agent: $SSH_KEY_PATH"
fi

cat "$SSH_KEY_PATH.pub"
