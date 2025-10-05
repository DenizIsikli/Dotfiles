#!/bin/bash
# To run the script: chmod +x deployGit.sh && ./deployGit.sh

# Ensure git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install git first."
    exit 1
fi

# Set Git aliases
git config --global alias.st status
git config --global alias.ps push
git config --global alias.pl pull
git config --global alias.c commit
git config --global alias.ca "commit --amend"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.lg "log --oneline --graph --decorate --all"

echo "Git aliases deployed successfully!"
