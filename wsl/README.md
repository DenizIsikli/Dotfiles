# WSL: Automated Setup Script for Development Environment

This repository contains a script to automatically configure your WSL
(Debian) environment for development.

## Included Features

-   Bash customization
-   Codeforces script access (optional)
-   SSH agent setup with automatic key loading
-   Recommended developer packages
-   Tmux configuration deployment

------------------------------------------------------------------------

## 1. Bash Customization File

The script creates:

``` bash
~/.bash_custom
```

Contents:

``` bash
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

# -- Local bin
export PATH="$HOME/.local/bin:$PATH"

# ================= SSH Setup =================

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi

for KEY in "$HOME/.ssh/id_ed25519" "$HOME/.ssh/id_rsa" "$HOME/.ssh/id_personal"; do
  if [ -f "$KEY" ]; then
    ssh-add -l 2>/dev/null | grep -q "$(ssh-keygen -lf "$KEY" | awk '{print $2}')" || \
      ssh-add "$KEY" > /dev/null 2>&1
  fi
done

# ================= Optional Scripts =================

GIT_SCRIPT="$HOME/.config/git/deployLinuxGit.sh"
if [ -f "$GIT_SCRIPT" ]; then
  source "$GIT_SCRIPT"
fi
```

------------------------------------------------------------------------

## 2. .bashrc Linking

``` bash
# Source user bash customizations
if [ -f ~/.bash_custom ]; then
  source ~/.bash_custom
fi
```

------------------------------------------------------------------------

## 3. Recommended Developer Packages

  -----------------------------------------------------------------------
  Category        Packages
  --------------- -------------------------------------------------------
  Build tools     build-essential, clangd

  Version control git

  Network         curl, wget, fd-find, keychain, openssh-client,
  utilities       net-tools

  Terminal        tmux, neovim
  utilities       

  Scripting       python3, python3-pip

  Automation      cron

  System tools    htop, tree, unzip, zip
  -----------------------------------------------------------------------

Install command:

``` bash
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
```

------------------------------------------------------------------------

## 4. SSH Key Setup

The script automatically attempts to load available SSH keys:

-   \~/.ssh/id_ed25519
-   \~/.ssh/id_rsa
-   \~/.ssh/id_personal

------------------------------------------------------------------------

## 5. Tmux Configuration Deployment

``` bash
DEST_DIR="$HOME/Code/Dotfiles/tmux"
mkdir -p "$DEST_DIR"

if [ -f "$HOME/.tmux.conf" ]; then
  cp "$HOME/.tmux.conf" "$DEST_DIR/tmux.conf"
fi
```
