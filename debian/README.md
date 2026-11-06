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
- gnome-tweaks
- gnome-shell-extensions
- gnome-shell-extension-manager

```bash
sudo apt update && sudo apt install -y git curl wget gpg zip unzip htop tree build-essential ripgrep fd-find tmux lazygit nodejs npm python3 python3-pip python3-venv wl-clipboard fonts-noto-color-emoji flatpak gnome-software-plugin-flatpak gnome-tweaks gnome-shell-extensions gnome-shell-extension-manager
```

## NVIDIA driver

Add `contrib non-free` after `main` on every line in `/etc/apt/sources.list`, then:

```bash
sudo apt update && sudo apt install -y linux-headers-amd64 nvidia-kernel-dkms nvidia-driver firmware-misc-nonfree
sudo systemctl enable nvidia-suspend nvidia-resume nvidia-hibernate
```

Reboot after installing.

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

## GNOME

- Extensions (via Extension Manager) — User Themes, Dash to Dock, Tiling Assistant
- Settings → Appearance → Dark
- Settings → Power → Automatic Suspend off
- Tweaks → Appearance → Shell → Mono

## Symlinks

- `~/.config/nvim` → `~/Code/Dotfiles/nvim`
- `~/.config/wezterm` → `~/Code/Dotfiles/wezterm`
- `~/.tmux.conf` → `~/Code/Dotfiles/tmux/tmux.conf`
- `~/.themes/Mono` → `~/Code/Dotfiles/debian/Mono`
- `~/.config/gtk-4.0/gtk.css` → `~/Code/Dotfiles/debian/Mono/gtk-4.0/gtk.css`

```bash
mkdir -p ~/.config ~/.themes ~/.config/gtk-4.0
ln -s ~/Code/Dotfiles/nvim ~/.config/nvim
ln -s ~/Code/Dotfiles/wezterm ~/.config/wezterm
ln -s ~/Code/Dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/Code/Dotfiles/debian/Mono ~/.themes/Mono
ln -s ~/Code/Dotfiles/debian/Mono/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
```
