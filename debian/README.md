# Setup

## APT

- git
- curl
- wget
- gpg
- zip
- unzip
- htop
- tree
- build-essential
- ripgrep
- fd-find
- tmux
- lazygit
- nodejs
- npm
- python3
- python3-pip
- python3-venv
- wl-clipboard
- fonts-noto-color-emoji
- flatpak
- gnome-software-plugin-flatpak

```bash
sudo apt update && sudo apt install -y git curl wget gpg zip unzip htop tree build-essential ripgrep fd-find tmux lazygit nodejs npm python3 python3-pip python3-venv wl-clipboard fonts-noto-color-emoji flatpak gnome-software-plugin-flatpak
```

## External repos

- WezTerm — apt.fury.io/wez
- Firefox — packages.mozilla.org

## Manual

- Neovim (latest) — github.com/neovim/neovim/releases → `/opt/nvim-linux-x86_64`
- tree-sitter-cli — `sudo npm install -g tree-sitter-cli`
- FiraMono Nerd Font — `~/.local/share/fonts`
- Symbols Nerd Font — `~/.local/share/fonts`
- TPM — `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Flatpak

- Flathub — `https://dl.flathub.org/repo/flathub.flatpakrepo`

## Symlinks

- `~/.config/nvim` → `~/Code/Dotfiles/nvim`
- `~/.config/wezterm` → `~/Code/Dotfiles/wezterm`
- `~/.tmux.conf` → `~/Code/Dotfiles/tmux/tmux.conf`
