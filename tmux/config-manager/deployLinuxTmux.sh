#!/bin/bash
# To run the script: chmod +x deployLinux.sh && ./deployLinux.sh

# Source path
SOURCE_FILE="/home/deniz/.tmux.conf"

# Destination path in your Dotfiles repo
DEST_DIR="/home/deniz/Code/Dotfiles/tmux"
DEST_FILE="$DEST_DIR/tmux.conf"

# Ensure the destination folder exists
mkdir -p "$DEST_DIR"

# Copy the tmux.conf file
cp "$SOURCE_FILE" "$DEST_FILE"

echo "Deployment completed"
