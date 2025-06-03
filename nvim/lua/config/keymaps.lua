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

-- Show And Copy Current File Path | Current File Path With Filename
vim.api.nvim_set_keymap('n', '<leader>½', [[:let @+ = expand('%:p:h') | echo "Copied folder path!"<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>§', [[:let @+ = expand('%:p') | echo "Copied full file path!"<CR>]], { noremap = true, silent = true })

-- Clear Search Highlight
vim.api.nvim_set_keymap('n', '<leader>9', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Prevent Auto-Commenting New Lines
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "o", "r" })
  end,
})

-- Normal mode: Move line up/down with Alt + Up/Down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Insert mode: Move line up/down with Alt + Up/Down
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })

-- Visual mode: Move selected lines up/down with Alt + Up/Down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Insert blank line above and below the current line
vim.keymap.set("n", "<C-i>", ":put! =''<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-o>", ":put =''<CR>", { noremap = true, silent = true })
