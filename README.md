<div align="center">
  <img src="misc/DotfilesRepoReadmePic.jpg" alt="Repository Structure" width="300">
</div>

# Dotfiles

Personal dotfiles for Neovim, Alacritty, and Tmux.

## Repository Structure

#### Configurations

- `nvim/`: The main directory containing Neovim configuration files.
  - `init.lua`: The primary configuration file loaded by Neovim on startup, which sets up the environment by requiring the configuration scripts.
  - `lua/`: Directory containing Lua configuration scripts.
    - `config/`: Directory containing configuration files for various plugins.
    - `plugins/`: Directory containing plugin configuration files.
- `alacritty/`
  - `alacritty.toml`: Alacritty configuration.
- `tmux/`
  - `tmux.conf`: Tmux configuration.

#### Additional Documentation

- `CommandPromptConfiguration.md`: Personal command prompt configuration settings (Windows).
- `CustomKeymaps.md`: A list of custom keymaps for Neovim.
- `InstallationGuide.md`: A guide on setting up Neovim with this configuration.
- `NeovimCheatsheet.md`: A curated list of shortcuts and commands for efficient navigation and command execution within Neovim.
- `TmuxCheatsheet.md`: A curated list of shortcuts and commands for efficient navigation and command execution within Tmux.
