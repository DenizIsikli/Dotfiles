-- Linux
vim.cmd('set runtimepath^=~/.config/nvim/lua/config')

-- Windows
-- vim.cmd('set runtimepath^=C:\\Users\\deniz\\AppData\\Local\\nvim\\lua\\config')

-- Work (Windows)
-- vim.cmd('set runtimepath^=C:\\Users\\deis\\AppData\\Local\\nvim\\lua\\config')

require("config.directories")
require("config.keymaps")
require("config.lazy")
require("config.settings")
require("config.statusline")
