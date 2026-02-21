#!/bin/bash
# To run this script:
# chmod +x deployLinux.sh && ./deployLinux.sh

echo "Setting up WSL environment and developer tools..."

# === Step 1: Define paths ===
CUSTOM_BASH="$HOME/.bash_custom"
BASHRC="$HOME/.bashrc"

# === Step 2: Create bash customization file ===
mkdir -p "$HOME/.config/git"

cat <<'EOF' > "$CUSTOM_BASH"
############### BashRc Customizations ###############

# Change home directory on shell start
cd ~

# Prevent accidental shell exit with Ctrl+D
set -o ignoreeof

# ================= Environment variables =================

# -- Codeforces (optional)
CF_DIR="$HOME/Code/Codeforces/script"
if [ -d "$CF_DIR" ]; then
  export PATH="$PATH:$CF_DIR"
  alias runcf="$CF_DIR/compile_n_run.sh"
fi

# -- Dotfiles Nvim (optional)
NVIM_MANAGER="$HOME/Code/Dotfiles/nvim/config-manager"
if [ -d "$NVIM_MANAGER" ]; then
  export PATH="$PATH:$NVIM_MANAGER"
fi

# -- Local bin (always safe)
export PATH="$HOME/.local/bin:$PATH"

# ================= SSH Setup =================

# Start SSH agent if not running
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi

# Try multiple common SSH keys
for KEY in "$HOME/.ssh/id_ed25519" "$HOME/.ssh/id_rsa" "$HOME/.ssh/id_personal"; do
  if [ -f "$KEY" ]; then
    ssh-add -l 2>/dev/null | grep -q "$(ssh-keygen -lf "$KEY" | awk '{print $2}')" || \
      ssh-add "$KEY" > /dev/null 2>&1
  fi
done

# ================= Optional Scripts =================

# Source git deployment script if present
GIT_SCRIPT="$HOME/.config/git/deployLinuxGit.sh"
if [ -f "$GIT_SCRIPT" ]; then
  source "$GIT_SCRIPT"
fi
EOF

echo "Created bash customization file at $CUSTOM_BASH"

# === Step 3: Ensure .bashrc sources it ===
if ! grep -q "source ~/.bash_custom" "$BASHRC"; then
  {
    echo ""
    echo "# Source user bash customizations"
    echo "if [ -f ~/.bash_custom ]; then"
    echo "  source ~/.bash_custom"
    echo "fi"
  } >> "$BASHRC"
  echo "Linked ~/.bash_custom inside ~/.bashrc"
else
  echo "~/.bash_custom already sourced in ~/.bashrc"
fi

# === Step 4: Install developer packages ===
echo "Installing recommended packages..."
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
  python3 \
  python3-pip \
  cron \
  htop \
  tree \
  unzip \
  zip

echo "Package installation complete."

# === Step 5: Deploy tmux config (optional) ===
SOURCE_FILE="$HOME/.tmux.conf"
DEST_DIR="$HOME/Code/Dotfiles/tmux"
DEST_FILE="$DEST_DIR/tmux.conf"

mkdir -p "$DEST_DIR"
if [ -f "$SOURCE_FILE" ]; then
  cp "$SOURCE_FILE" "$DEST_FILE"
  echo "Tmux config deployed"
else
  echo "Tmux config not found at $SOURCE_FILE"
fi

echo "Setup complete. Restart your terminal to load the new Bash customizations."
