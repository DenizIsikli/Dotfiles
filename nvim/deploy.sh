#!/bin/bash

# To run the script: chmod +x deploy.sh && ./deploy.sh
# Source paths
SOURCE_PATH="/home/deniz/.config/nvim"
INIT_FILE="$SOURCE_PATH/init.lua"
LUA_FOLDER="$SOURCE_PATH/lua"

# Destination paths
DEST_PATH="/home/deniz/Code/Dotfiles/nvim"

# Copy the init.lua file
cp "$INIT_FILE" "$DEST_PATH"

# Copy the lua folder recursively
cp -r "$LUA_FOLDER" "$DEST_PATH"

echo "Deployment completed"

