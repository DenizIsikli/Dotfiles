-- Neovim Configuration Filesystem Structure
-- =========================================

-- lua/                 : Directory containing Lua configuration scripts
--   ├ nvimsetup.lua    : Setup for Neovim API, command mappings, and shortcuts
--   └ plugins.lua      : Plugin configurations and settings

-- init.lua             : The initial script that Neovim runs, which sets up the environment
--                        by requiring the above configuration scripts.

require('plugins')      -- Load the plugin configurations
require('nvimsetup')    -- Load the Neovim API and command setup

