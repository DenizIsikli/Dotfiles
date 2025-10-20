#!/bin/bash
# To run the script: chmod +x syncLinux.sh && ./syncLinux.sh

# Source path (repo)
SOURCE_FILE="/home/deniz/Code/Dotfiles/tmux/tmux.conf"

# Destination path (actual tmux config in home)
DEST_FILE="/home/deniz/.tmux.conf"

# Ensure the destination folder exists (home should already exist)
mkdir -p "$(dirname "$DEST_FILE")"

# Copy the tmux.conf file from repo to home
cp "$SOURCE_FILE" "$DEST_FILE"

echo "Synchronization completed"
