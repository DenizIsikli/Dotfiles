#!/bin/bash
# To run this script:
# chmod +x deployLinux.sh && ./deployLinux.sh

echo "🚀 Setting up WSL environment and developer tools..."

# === Step 1: Define paths ===
CUSTOM_BASH="$HOME/.bash_custom"
BASHRC="$HOME/.bashrc"
GIT_SCRIPT="$HOME/.config/git/deployLinuxGit.sh"

# === Step 2: Create bash customization file ===
mkdir -p "$HOME/.config/git"

cat <<'EOF' > "$CUSTOM_BASH"
############### BashRc Customizations ###############
# Change home directory on shell start
cd ~

# Prevent accidental shell exit with Ctrl+D
set -o ignoreeof

# Set up environment variables for Codeforces script
export PATH="$PATH:/home/deniz/Code/Codeforces/script"
alias runcf='/home/deniz/Code/Codeforces/script/compile_n_run.sh'

# Start SSH agent and add key if not already added
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi

# Setup SSH key on WSL startup
SSH_KEY="$HOME/.ssh/id_personal"

if [ -f "$SSH_KEY" ]; then
  if ! ssh-add -l | grep -q "$(ssh-keygen -lf "$SSH_KEY" | awk '{print $2}')"; then
    ssh-add "$SSH_KEY" > /dev/null
  fi
fi

# Source git deployment script if present
if [ -f "$HOME/.config/git/deployLinuxGit.sh" ]; then
  source "$HOME/.config/git/deployLinuxGit.sh"
fi
EOF

echo "✅ Created bash customization file at $CUSTOM_BASH"

# === Step 3: Ensure .bashrc sources it ===
if ! grep -q "source ~/.bash_custom" "$BASHRC"; then
  {
    echo ""
    echo "# Source user bash customizations"
    echo "if [ -f ~/.bash_custom ]; then"
    echo "  source ~/.bash_custom"
    echo "fi"
  } >> "$BASHRC"
  echo "✅ Linked ~/.bash_custom inside ~/.bashrc"
else
  echo "ℹ️ ~/.bash_custom already sourced in ~/.bashrc"
fi

# === Step 4: Install developer packages ===
echo "📦 Installing recommended packages..."
sudo apt update -y && sudo apt install -y \
  build-essential \
  clangd \
  git \
  curl \
  wget \
  fd-find \
  keychain \
  openssh-client \
  net-tools \
  tmux \
  neovim \
  neovim \
  python3 \
  python3-pip \
  cron \
  htop \
  tree \
  unzip \
  zip

echo "✅ Package installation complete."

# === Step 5: Deploy tmux config ===
SOURCE_FILE="$HOME/.tmux.conf"
DEST_DIR="$HOME/Code/Dotfiles/tmux"
DEST_FILE="$DEST_DIR/tmux.conf"

mkdir -p "$DEST_DIR"
if [ -f "$SOURCE_FILE" ]; then
  cp "$SOURCE_FILE" "$DEST_FILE"
  echo "✅ Tmux config deployed"
else
  echo "⚠️ Tmux config not found at $SOURCE_FILE"
fi

echo "🎉 Setup complete! Restart your terminal to load the new Bash customizations."
