-- General Configuration
vim.wo.number = true -- Show line numbers

vim.opt.swapfile = false -- Disable swap files

vim.opt.cmdheight = 1

-- Set Statusline
vim.opt.laststatus = 3
vim.opt.statusline = "%<%f %h%m%r%=%-14.(%l,%c%V%) %P"

-- Misc Settings
vim.opt.tabstop = 4 -- Tab Size
vim.opt.shiftwidth = 4 -- Indent Size
vim.opt.softtabstop = 4 -- Tab Size
vim.opt.expandtab = true -- Use Spaces
vim.opt.cursorline = true -- Highlight Current Line
vim.opt.wrap = false -- Disable Line Wrapping
vim.opt.linebreak = true -- Break Lines

vim.g.mapleader = "æ" -- Set Mapleader
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true }) -- xclip (Copy Marked)
vim.api.nvim_set_keymap('v', '<leader>q', '"+d', { noremap = true, silent = true }) -- xclip (Copy and Delete)
vim.api.nvim_set_keymap('n', '<leader>Y', ':%y+<CR>', { noremap = true, silent = true }) -- xclip (Copy Entire File)

vim.g.have_nerd_font = true -- Set Nerd Font
vim.api.nvim_set_keymap('n', '<leader>8', ':resize +5<CR>', { noremap = true, silent = true }) -- Resize Window (Increase)
vim.api.nvim_set_keymap('n', '<leader>7', ':resize -5<CR>', { noremap = true, silent = true }) -- Resize Window (Decrease)

-- Neovim Window Navigation
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true }) -- Left
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true }) -- Down
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true }) -- Up
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true }) -- Right

-- End of Line
vim.api.nvim_set_keymap('n', 't', 'g_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'e', '^', { noremap = true, silent = true })

---- Directory Configuration (Neovim Startup Folder)
--  Linux
-- vim.cmd [[cd ~/Code]] -- Project Folder
-- vim.cmd [[cd ~/.config/nvim]] -- Configuration Folder

-- Windows
vim.cmd [[cd C:\\Users\\deniz\\Desktop\\Code]] -- Project Folder
-- vim.cmd [[cd C:\\Users\\deniz\\AppData\\Local\\nvim]] -- Configuration Folder

---- Project/Configuration Directory User Commands
-- Linux
-- vim.api.nvim_create_user_command('ProjectDir', "cd ~/Code", {}) -- Project Directory
-- vim.api.nvim_create_user_command('ConfigDir', "cd ~/.config/nvim", {}) -- Configuration Directory

-- Windows
vim.api.nvim_create_user_command('ProjectDir', "cd C:\\Users\\deniz\\Desktop\\Code", {}) -- Project Directory
vim.api.nvim_create_user_command('ConfigDir', "cd C:\\Users\\deniz\\AppData\\Local\\nvim", {}) -- Configuration Directory

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

-- Exit To Alpha Dashboard
vim.keymap.set("n", "<leader>T", function()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  for _, buf in ipairs(buffers) do
    vim.cmd("bd! " .. buf.bufnr)
  end
  vim.cmd("Alpha")
end, { desc = "Close all buffers and go to Alpha dashboard" })

-- Remove Dot Function
vim.keymap.set("n", ".", "<Nop>", { noremap = true })

