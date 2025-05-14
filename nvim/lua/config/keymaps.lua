-- Leader Key
vim.g.mapleader = "æ"

-- Visual Mode Yank/Delete (Clipboard)
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>q', '"+d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', ':%y+<CR>', { noremap = true, silent = true })

-- Window Resize
vim.keymap.set('n', '<C-k>', function() vim.cmd('resize +5') end, { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', function() vim.cmd('resize -5') end, { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', function() vim.cmd('vertical resize +5') end, { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', function() vim.cmd('vertical resize -5') end, { noremap = true, silent = true })

-- Window Navigation
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

-- Motion Tweaks
vim.api.nvim_set_keymap('n', 't', 'g_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'e', '^', { noremap = true, silent = true })

-- Auto-Indent
vim.keymap.set('i', '<C-F>', '<C-O>==', { noremap = true, silent = true })
vim.keymap.set('n', '<C-F>', '==', { noremap = true, silent = true })

-- Move Lines Visually
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Disable `K` (Doc lookup)
vim.keymap.set({ 'n', 'v' }, 'K', '<nop>')

-- Dot is NOP
vim.keymap.set("n", ".", "<Nop>", { noremap = true })

-- Show Current File Path
vim.api.nvim_set_keymap('n', '<leader>½', ':echo expand("%:p:h")<CR>', { noremap = true, silent = true })
