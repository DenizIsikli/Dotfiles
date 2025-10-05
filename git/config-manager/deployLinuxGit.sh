#!/bin/bash
# To run the script: chmod +x deployGit.sh && ./deployGit.sh

# Source path for aliases
SOURCE_PATH="/home/deniz/Code/Dotfiles/git"
ALIASES_FILE="$SOURCE_PATH/config-manager/deployLinuxGit.sh"

# Destination path
DEST_PATH="$HOME/.config/git"

# Ensure git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install git first."
    exit 1
fi

# Ensure the destination folder exists
mkdir -p "$DEST_PATH"

# Copy aliases script
cp "$ALIASES_FILE" "$DEST_PATH"

# Determine shell config file
SHELL_RC="$HOME/.bashrc"
if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
fi

# Add sourcing line if not already present
if ! grep -q "source $DEST_PATH/git_aliases.sh" "$SHELL_RC"; then
    echo "source $DEST_PATH/git_aliases.sh" >> "$SHELL_RC"
    echo "Git aliases added to $SHELL_RC. Please restart your terminal or run 'source $SHELL_RC'."
else
    echo "Git aliases already sourced in $SHELL_RC"
fi

echo "Git aliases deployment completed."
