#!/bin/bash
# To run the script: chmod +x deployLinux.sh && ./deployLinux.sh

# Source paths
SOURCE_PATH="/home/deniz/.config/nvim"
INIT_FILE="$SOURCE_PATH/init.lua"
LUA_FOLDER="$SOURCE_PATH/lua"
PACK_FOLDER="$SOURCE_PATH/pack"

# Destination paths
DEST_PATH="/home/deniz/Code/Dotfiles/nvim"

# Ensure the destination folder exists
mkdir -p "$DEST_PATH"

# Copy the init.lua file
cp "$INIT_FILE" "$DEST_PATH"

# Copy the lua folder
cp -r "$LUA_FOLDER" "$DEST_PATH"

# Copy the pack folder
cp -r "$PACK_FOLDER" "$DEST_PATH"

echo "Deployment completed"

