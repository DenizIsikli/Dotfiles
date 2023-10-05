-- Set line numbers, relative numbers, and auto-indentation
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true

-- Set tab and indentation settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.softtabstop = 4

-- Enable mouse support
vim.o.mouse = 'a'

-- Initialize Vim-Plug
vim.cmd([[call plug#begin('~/.config/nvim/plugged')]])

-- List of your plugins
vim.cmd([[Plug 'tpope/vim-surround']])
vim.cmd([[Plug 'preservim/nerdtree']])
vim.cmd([[Plug 'tpope/vim-commentary']])
vim.cmd([[Plug 'vim-airline/vim-airline']])
vim.cmd([[Plug 'ap/vim-css-color']])
vim.cmd([[Plug 'nightsense/carbonized']])
vim.cmd([[Plug 'ryanoasis/vim-devicons']])
vim.cmd([[Plug 'tc50cal/vim-terminal']])
vim.cmd([[Plug 'preservim/tagbar']])
vim.cmd([[Plug 'neoclide/coc.nvim']])

-- End Vim-Plug
vim.cmd([[call plug#end()]])

-- Key mappings
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true })

-- Configure NERDTree arrows
vim.g.NERDTreeDirArrowExpandable = '+'
vim.g.NERDTreeDirArrowCollapsible = '~'

-- Disable preview for completion
vim.o.completeopt = vim.o.completeopt:gsub('preview,', '')

-- Set the color scheme
vim.cmd([[colorscheme carbonized-dark]])
