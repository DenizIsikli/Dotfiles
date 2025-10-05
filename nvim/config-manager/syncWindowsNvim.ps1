# To run the script: .\syncWindows.ps1

# Source paths (repo)
$SOURCE_PATH = "C:\Users\deniz\Desktop\Code\Dotfiles\nvim"
$INIT_FILE = "$SOURCE_PATH\init.lua"
$LUA_FOLDER = "$SOURCE_PATH\lua"
$PACK_FOLDER = "$SOURCE_PATH\pack"

# Destination paths (actual Neovim config folder)
$DEST_PATH = "C:\Users\deniz\AppData\Local\nvim"

# Ensure the destination folder exists
if (-Not (Test-Path -Path $DEST_PATH)) {
    New-Item -ItemType Directory -Path $DEST_PATH -Force
}

# Copy the init.lua file
Copy-Item -Path $INIT_FILE -Destination $DEST_PATH -Force

# Copy the lua folder
Copy-Item -Path $LUA_FOLDER -Destination $DEST_PATH -Recurse -Force

# Copy the pack folder
Copy-Item -Path $PACK_FOLDER -Destination $DEST_PATH -Recurse -Force

Write-Output "Synchronization completed"
