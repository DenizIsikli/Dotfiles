# WSL / Linux Dev Environment Setup

## Bash Custom Configuration

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
```
