# ✅ WSL: Automated Setup Script for Development Environment

This repository contains a script to automatically configure your WSL (Debian) environment for development, including:

* Bash customization
* Codeforces script access
* SSH agent setup with your personal key
* Recommended developer packages
* Tmux configuration deployment

---

## 📄 1. Bash Customization File

The script creates a separate bash customization file at:

```bash
~/.bash_custom
```

This file contains:

```bash
############### BashRc Customizations ###############
# Change home directory on shell start
cd ~

# Set up environment variables for Codeforces script
export PATH="$PATH:$HOME/Code/Codeforces/script"
alias runcf='$HOME/Code/Codeforces/script/compile_n_run.sh'

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
```

---

## 🔗 2. `.bashrc` Linking

The script ensures your `~/.bashrc` sources the `.bash_custom` file automatically:

```bash
# Source user bash customizations
if [ -f ~/.bash_custom ]; then
  source ~/.bash_custom
fi
```

No need to manually edit `.bashrc` — this is handled by the deploy script.

---

## 🛠️ 3. Recommended Developer Packages

The script installs essential packages for development and system utilities. These are included:

| Category           | Package                                                              |
| ------------------ | -------------------------------------------------------------------- |
| Build tools        | `build-essential`, `clangd`                                          |
| Version control    | `git`                                                                |
| Network utilities  | `curl`, `wget`, `fd-find`, `keychain`, `openssh-client`, `net-tools` |
| Terminal utilities | `tmux`, `neovim`                                                     |
| Scripting          | `python3`, `python3-pip`                                             |
| Automation         | `cron`                                                               |
| System tools       | `htop`, `tree`, `unzip`, `zip`                                       |

Install command used in the script:

```bash
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

---

## 🔑 4. SSH Key Setup

The script automatically starts your SSH agent and adds your personal key if it exists and isn’t already loaded:

```bash
SSH_KEY="$HOME/.ssh/id_personal"

if [ -f "$SSH_KEY" ]; then
  if ! ssh-add -l | grep -q "$(ssh-keygen -lf "$SSH_KEY" | awk '{print $2}')"; then
    ssh-add "$SSH_KEY" > /dev/null
  fi
fi
```

---

## 📦 5. Tmux Configuration Deployment

If you have a tmux configuration file at `~/.tmux.conf`, the script copies it to your dotfiles folder:

```bash
DEST_DIR="$HOME/Code/Dotfiles/tmux"
mkdir -p "$DEST_DIR"
cp ~/.tmux.conf "$DEST_DIR/tmux.conf"
```

This ensures your tmux setup is version-controlled and portable.

---

## ▶️ 6. Usage

Run the deploy script in WSL to automatically apply all settings:

```bash
chmod +x ~/Code/Dotfiles/wsl/deployLinux.sh
~/Code/Dotfiles/wsl/deployLinux.sh
```

After running, open a new terminal or reload your shell:

```bash
source ~/.bashrc
```

Your environment will now have:

* Bash customizations loaded
* Codeforces scripts accessible globally
* SSH agent started and key added
* Recommended development packages installed
* Tmux configuration deployed
