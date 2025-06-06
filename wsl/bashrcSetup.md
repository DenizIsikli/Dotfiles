# Setup SSH Agent and Home Directory in WSL

To ensure your WSL environment starts in your home directory and your SSH agent runs with your key loaded, add the following to your ~/.bashrc file:

```bash
# Change home directory on shell start
cd ~

# Start SSH agent and add key if not already added
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi

# Replace "id_personal" with your actual private key filename if different
SSH_KEY="$HOME/.ssh/id_personal"

if [ -f "$SSH_KEY" ]; then
  if ! ssh-add -l | grep -q "$(ssh-keygen -lf "$SSH_KEY" | awk '{print $2}')"; then
    ssh-add "$SSH_KEY" > /dev/null
  fi
fi
```

Source .bashrc after adding the code or restart your terminal:
```bash
source ~/.bashrc
```
