# Linux Dev Environment Setup (Debian OS)

## Bash Custom Configuration

Append to the end of `~/.bashrc`, then run `source ~/.bashrc`.

```bash
############### BashRc Customizations ###############

# Prevent accidental shell exit with Ctrl+D
set -o ignoreeof

# Simple prompt
PS1='\u@\h:\w\$ '

# ================= Environment variables =================

# -- Local bin
export PATH="$HOME/.local/bin:$PATH"

# -- Codeforces (optional)
CF_DIR="$HOME/Code/Codeforces/script"
if [ -d "$CF_DIR" ]; then
  export PATH="$PATH:$CF_DIR"
  alias runcf="$CF_DIR/compile_n_run.sh"
fi
```
