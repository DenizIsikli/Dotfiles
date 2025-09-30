#!/bin/bash
# To run the script: chmod +x deployLinux.sh && ./deployLinux.sh

# Source path
SOURCE_FILE="/home/deniz/.tmux.conf"

# Destination path in your Dotfiles repo
DEST_PATH="/home/deniz/Code/Dotfiles/tmux/tmux.conf"

# Ensure the destination folder exists
mkdir -p "$DEST_PATH"

# Copy the tmux.conf file
cp "$SOURCE_FILE" "$DEST_PATH"

echo "Deployment completed"
