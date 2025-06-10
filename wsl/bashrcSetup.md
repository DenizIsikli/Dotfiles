# ✅ WSL: Setup Home Directory, Codeforces Script Access, and SSH Agent

To configure your WSL (Debian 12) environment for smoother development, follow these steps. Add the following blocks to the **bottom of your `~/.bashrc`** file, in this **specific order**, to ensure correct initialization.

---

## 📁 1. Change to Home Directory on Shell Start

Ensures that every new terminal session starts in your home directory:

```bash
# Change home directory on shell start
cd ~
```

---

## 🛠️ 2. Set Up Codeforces Script Access

Adds your Codeforces script folder to the `PATH` so you can call your compile script from anywhere, and defines a shortcut alias `runcf`:

```bash
# Set up environment variables for Codeforces script
export PATH="$PATH:/home/deniz/Code/Codeforces/script"
alias runcf='/home/deniz/Code/Codeforces/script/compile_n_run.sh'
```

---

## 🔐 3. Start SSH Agent If Not Running

Automatically starts the SSH agent if it's not already running:

```bash
# Start SSH agent and add key if not already added
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi
```

---

## 🔑 4. Add SSH Key Automatically

Replaces `"id_personal"` with your actual key file if different. This block checks if the key is already added and adds it if necessary:

```bash
# Setup SSH key on WSL startup
SSH_KEY="$HOME/.ssh/id_personal"

if [ -f "$SSH_KEY" ]; then
  if ! ssh-add -l | grep -q "$(ssh-keygen -lf "$SSH_KEY" | awk '{print $2}')"; then
    ssh-add "$SSH_KEY" > /dev/null
  fi
fi
```

---

## 🔁 Apply Changes

After updating `.bashrc`, run this to apply changes immediately:

```bash
source ~/.bashrc
```
