-- General Settings
vim.cmd [[syntax enable]]
vim.cmd [[set background=dark]]
vim.cmd [[colorscheme gruvbox]]

vim.wo.number = true -- Show line numbers
vim.wo.relativenumber = true -- Show relative line numbers
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.g.mapleader = "l" -- Set the leader key

-- Setting the default directory to start in Neovim projects folder
vim.cmd [[cd C:\Users\deniz\Neovim]]
-- vim.cmd [[cd C:\Users\deniz\AppData\Local\nvim]]

-- Project Directory
vim.api.nvim_create_user_command('ProjectDir', 'cd C:\\Users\\deniz\\Neovim', {})

-- Configuration Directory
vim.api.nvim_create_user_command('ConfigDir', 'cd C:\\Users\\deniz\\AppData\\Local\\nvim', {})

-- Lualine configuration
require('lualine').setup{
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      'filename',
      function()
        return vim.fn['nvim_treesitter#statusline'](180)
      end},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}  },
}

-- Harpoon configuration
local harpoon = require("harpoon")
  -- REQUIRED
harpoon:setup()
  -- REQUIRED
vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
  -- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end)

-- Nvim-Tree configuration
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.api.nvim_set_keymap('n', '<C-t>', ':Neotree<CR>', { noremap = true })

-- ALE configuration
vim.g.ale_linters = {
  python = {'flake8', 'mypy'},
  cpp = {'clangd'},
  c = {'clangd'}
}

-- Coc.nvim configuration for LSP and autocompletion
vim.g.coc_global_extensions = {'coc-pyright', 'coc-clangd', 'coc-json'}

-- Specific settings for Python, C, and C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

