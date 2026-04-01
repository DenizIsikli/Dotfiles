#!/bin/bash
# deployLinux.sh

SOURCE="/home/deniz/.config/nvim"
DEST="/home/deniz/Code/Dotfiles/nvim"

mkdir -p "$DEST"

rsync -av --delete "$SOURCE/init.lua" "$DEST/"
rsync -av --delete "$SOURCE/lua/" "$DEST/lua/"
rsync -av --delete "$SOURCE/pack/" "$DEST/pack/"

echo "Deployment completed"
