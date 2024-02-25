require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'morhetz/gruvbox'

  -- Neo-Tree
  use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  -- Vim-Airline for status/tabline
  use 'vim-airline/vim-airline'

  -- Fugitive for Git integration
  use 'tpope/vim-fugitive'

  -- ALE for linting and syntax checking
  use 'dense-analysis/ale'

  -- Coc.nvim for autocompletion, using the release branch
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Vim-polyglot for enhanced syntax highlighting
  use 'sheerun/vim-polyglot'
end)

-- Setting the default directory to start in nvim configuration directory
vim.cmd [[cd C:\Users\deniz\AppData\Local\nvim]]

-- Theme settings
vim.cmd [[syntax enable]]
vim.cmd [[set background=dark]]
vim.cmd [[colorscheme gruvbox]]

-- Nvim-Tree configuration
vim.g.nvim_tree_auto_open = 1
vim.api.nvim_set_keymap('n', '<C-t>', ':Neotree<CR>', { noremap = true })

-- ALE configuration
vim.g.ale_linters = {
  python = {'flake8', 'mypy'},
  cpp = {'clangd'},
  c = {'clangd'}
}

-- Coc.nvim configuration for LSP and autocompletion
vim.g.coc_global_extensions = {'coc-pyright', 'coc-clangd', 'coc-json'}

-- Airline configuration
vim.g.airline_powerline_fonts = 1

-- Other useful settings
vim.wo.number = true -- Show line numbers
vim.wo.relativenumber = true -- Show relative line numbers

-- Nvim-Tree indentation markers
vim.g.nvim_tree_indent_markers = 1

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
