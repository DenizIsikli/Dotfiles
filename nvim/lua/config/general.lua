-- General Configuration
vim.wo.number = true -- Show line numbers

vim.opt.swapfile = false -- Disable swap files

vim.opt.cmdheight = 1

-- Set statusline
vim.opt.laststatus = 3
vim.opt.statusline = "%<%f %h%m%r%=%-14.(%l,%c%V%) %P"

-- Misc settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true

-- Set mapleader
vim.g.mapleader = "æ"

-- xclip copy marked
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- xclip copy whole file
vim.api.nvim_set_keymap('n', '<leader>Y', ':%y+<CR>', { noremap = true, silent = true })

-- Set Nerd Font
vim.g.have_nerd_font = true

-- Resizing window bigger
vim.api.nvim_set_keymap('n', '<Leader>6', ':resize +5<CR>', { noremap = true, silent = true })

-- Resizing window smaller
vim.api.nvim_set_keymap('n', '<Leader>5', ':resize -5<CR>', { noremap = true, silent = true })

-- Movement between windows
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { noremap = true, silent = true }) -- Left
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { noremap = true, silent = true }) -- Down
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { noremap = true, silent = true }) -- Up
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { noremap = true, silent = true }) -- Right

-- Directory Configuration
vim.cmd [[cd ~/Code]] -- Current default startup folder
-- vim.cmd [[cd C:\Users\deniz\AppData\Local\nvim]]

-- Project Directory
vim.api.nvim_create_user_command('ProjectDir', "cd ~/Code", {})

-- Configuration Directory
vim.api.nvim_create_user_command('ConfigDir', "cd ~/.config/nvim", {})

-- Diagnostics Configuration
vim.diagnostic.config({
  virtual_text = true,  -- Inline Diagnostics
})

-- Setup diagnostics
vim.diagnostic.config({
  -- Enable inline diagnostics
  virtual_text = {
    prefix = '●', -- Options: '■', '▎', 'x'
    spacing = 4,  -- Sets the spacing between the end of the line and the diagnostic message
  },

  -- Other diagnostic configurations
  severity_sort = true,
  underline = true,
  update_in_insert = true,
})

-- Neo-Tree Configuration
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.api.nvim_set_keymap('n', '<C-t>', ':Neotree<CR>', { noremap = true })
