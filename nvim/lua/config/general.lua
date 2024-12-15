-- General Configuration
vim.wo.number = true -- Show line numbers

vim.opt.swapfile = false -- Disable swap files

vim.opt.cmdheight = 1

-- Set Statusline
vim.opt.laststatus = 3
vim.opt.statusline = "%<%f %h%m%r%=%-14.(%l,%c%V%) %P"

-- Misc Settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true

-- Set Mapleader
vim.g.mapleader = "æ"

-- xclip (Copy Marked)
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- xclip (Copy Entire File)
vim.api.nvim_set_keymap('n', '<leader>Y', ':%y+<CR>', { noremap = true, silent = true })

-- Set Nerd Font
vim.g.have_nerd_font = true

-- Resize Window (Increase)
vim.api.nvim_set_keymap('n', '<leader>6', ':resize +5<CR>', { noremap = true, silent = true })

-- Resize Window (Decrease)
vim.api.nvim_set_keymap('n', '<leader>5', ':resize -5<CR>', { noremap = true, silent = true })

-- Neovim Window Navigation
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true }) -- Left
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true }) -- Down
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true }) -- Up
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true }) -- Right

-- Directory Configuration (Neovim Startup Folder)
vim.cmd [[cd ~/Code]] -- Project Folder
-- vim.cmd [[cd ~/.config/nvim]] -- Configuration Folder

-- Project Directory
vim.api.nvim_create_user_command('ProjectDir', "cd ~/Code", {})

-- Configuration Directory
vim.api.nvim_create_user_command('ConfigDir', "cd ~/.config/nvim", {})

-- Diagnostics Configuration
vim.diagnostic.config({
  virtual_text = true,  -- Inline Diagnostics
})

-- Setup Diagnostics
vim.diagnostic.config({
  -- Enable inline diagnostics
  virtual_text = {
    prefix = '●', -- Options: '■', '▎', 'x'
    spacing = 4,  -- Sets the spacing between the end of the line and the diagnostic message
  },

  -- Other Diagnostic Configurations
  severity_sort = true,
  underline = true,
  update_in_insert = true,
})

-- Neo-Tree Configuration
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.api.nvim_set_keymap('n', '<C-t>', ':Neotree<CR>', { noremap = true })
