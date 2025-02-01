# To run the script: .\deployWindows.ps1

# # To run the script: chmod +x deploy.sh && ./deploy.sh
# Source paths
SOURCE_PATH="C:\Users\deniz\AppData\Local\nvim"
INIT_FILE="$SOURCE_PATH\init.lua"
LUA_FOLDER="$SOURCE_PATH\lua"
PACK_FOLDER="$SOURCE_PATH\pack"

# Destination paths
DEST_PATH="C:\Users\deniz\Desktop\Code\Dotfiles\nvim"

# Copy the init.lua file
cp "$INIT_FILE" "$DEST_PATH"

# Copy the lua folder
cp -r "$LUA_FOLDER" "$DEST_PATH"

# Copy the pack folder
cp -r "$PACK_FOLDER" "$DEST_PATH"

echo "Deployment completed"

