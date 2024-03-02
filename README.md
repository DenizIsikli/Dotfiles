# Neovim Configuration

Personal Neovim configuration repository.

## Repository Structure

#### Configurations

- `nvim/`: The main directory containing Neovim configuration files.
  - `init.lua`: The primary configuration file loaded by Neovim on startup, which sets up the environment by requiring the configuration scripts.
  - `lua/`: Directory containing Lua configuration scripts.
    - `config/`: Configuration modules for Neovim settings.
      - `asyncLintengine.lua`: Async linting engine configuration.
      - `directory.lua`: Directory management commands.
      - `general.lua`: General settings for Neovim.
      - `harpoon.lua`: Harpoon plugin configuration.
      - `lsp.lua`: Language Server Protocol configuration.
      - `lualine.lua`: Lualine status line configuration.
      - `neotree.lua`: Neotree file explorer configuration.
      - `init.lua`: Initializer for configurations in the `config` directory.
    - `plugins/`: Packer plugin management.
      - `plugins.lua`: Plugin specifications and setup using packer.nvim.

#### Additional Documentation

- `CommandPromptColorScheme.md`: My custom Gruvbox color scheme settings for the command prompt.
- `InstallationGuide.md`: A guide on setting up Neovim with this configuration.
- `Shortcuts&Commands.md`: A curated list of shortcuts and commands for efficient navigation and command execution within Neovim.
