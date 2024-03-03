-- Neovim Configuration Filesystem Structure
-- =========================================

-- lua/                     : Directory containing Lua configuration scripts
--   ├ config/              : Configuration modules for Neovim settings
--   │ ├ diagnostics.lua    : Diagnostic settings for Neovim
--   │ ├ directory.lua      : Directory management commands
--   │ ├ general.lua        : General settings for Neovim
--   │ ├ harpoon.lua        : Harpoon plugin configuration
--   │ ├ init.lua           : Initializer for configurations in the config directory
--   │ ├ lsp.lua            : Language Server Protocol configuration
--   │ ├ lualine.lua        : Lualine status line configuration
--   │ ├ mason.lua          : Mason plugin configuration
--   │ └ neotree.lua        : Neotree file explorer configuration
--   └ plugins/             : Packer plugin management
--     └ plugins.lua        : Plugin specifications and setup using packer.nvim

-- init.lua                 : The initial script that Neovim runs, which sets up the environment
--                            by requiring the above configuration scripts.

require('config')           -- Loads all configuration files from the config directory
require('plugins.plugins')  -- Loads the plugin specifications using packer.nvim

