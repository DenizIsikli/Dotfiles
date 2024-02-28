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
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    }
  }

  -- Lualine (Status Line)
  use {
	'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true } 
  }

  require('lualine').setup {
    options = {
  use 'morhetz/gruvbox'
      icons_enabled = true,
      theme = 'codedark',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }	
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
      inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }
	
  -- Fugitive for Git integration
  use 'tpope/vim-fugitive'

  -- ALE for linting and syntax checking
  use 'dense-analysis/ale'

  -- Coc.nvim for autocompletion, using the release branch
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Vim-polyglot for enhanced syntax highlighting
  use 'sheerun/vim-polyglot'
  
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- Markdown Preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
end)

-- Setting the default directory to start in Neovim projects folder
vim.cmd [[cd C:\Users\deniz\Neovim]]

-- Project Directory
vim.api.nvim_create_user_command('ProjectDir', 'cd C:\\Users\\deniz\\Neovim', {})

-- Configuration Directory
vim.api.nvim_create_user_command('ConfigDir', 'cd C:\\Users\\deniz\\AppData\\Local\\nvim', {})

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


