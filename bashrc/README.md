# 🧩 BashRC Customizations

Use this snippet to customize your `.bashrc` for safer session handling, SSH setup, and Codeforces script integration.

```bash
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
