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

  -- Harpoon
  use "nvim-lua/plenary.nvim"
  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Lualine (Status Line)
  use {
	'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true } 
  }

  -- Fugitive for Git integration
  use 'tpope/vim-fugitive'

  -- Mason Neovim
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

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

