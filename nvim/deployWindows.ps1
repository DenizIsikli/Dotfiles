# To run the script: .\deployWindows.ps1

# # To run the script: .\deployWindows.ps1
# Source paths
$SOURCE_PATH = "C:\Users\deniz\AppData\Local\nvim"
$INIT_FILE = "$SOURCE_PATH\init.lua"
$LUA_FOLDER = "$SOURCE_PATH\lua"
$PACK_FOLDER = "$SOURCE_PATH\pack"

# Destination paths
$DEST_PATH = "C:\Users\deniz\Desktop\Code\Dotfiles\nvim"

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

Write-Output "Deployment completed"
