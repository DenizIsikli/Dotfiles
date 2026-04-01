#!/bin/bash
# syncLinux.sh

SOURCE="/home/deniz/Code/Dotfiles/nvim"
DEST="/home/deniz/.config/nvim"

mkdir -p "$DEST"

rsync -av --delete "$SOURCE/init.lua" "$DEST/"
rsync -av --delete "$SOURCE/lua/" "$DEST/lua/"
rsync -av --delete "$SOURCE/pack/" "$DEST/pack/"

echo "Synchronization completed"
