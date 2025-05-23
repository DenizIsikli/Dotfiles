-- Mason, LSP and Completion Configuration
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "jsonls",
          "pyright",
          "clangd",
          "tailwindcss",
          "rust_analyzer",
          "zls",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Optional: Keybindings on LSP attach
      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
        end
        map("n", "gd", vim.lsp.buf.definition) -- Go to definition
        map("n", "gi", vim.lsp.buf.implementation) -- Go to implementation
        map("n", "gr", vim.lsp.buf.references) -- Go to references
        map("n", "K", vim.lsp.buf.hover) -- Show hover information
        map("n", "<leader>rn", vim.lsp.buf.rename) -- Rename symbol

        -- Open Definition (Split Window Vertically)
        map("n", "gdj", function()
            vim.cmd("vsplit")
            vim.lsp.buf.definition()
        end)

        -- Open Definition (Split Window Horizontally)
        map("n", "gdk", function()
            vim.cmd("split")
            vim.lsp.buf.definition()
        end)

        -- Open Implementation (Split Window Vertically)
        map("n", "gij", function()
            vim.cmd("vsplit")
            vim.lsp.buf.implementation()
        end)

        -- Open Implementation (Split Window Horizontally)
        map("n", "gik", function()
            vim.cmd("split")
            vim.lsp.buf.implementation()
        end)
      end

      -- Language servers
      local servers = {
        lua_ls = {},
        ts_ls = {},
        html = {},
        cssls = {},
        jsonls = {},
        pyright = {},
        clangd = {},
        tailwindcss = {},
        rust_analyzer = {},
        zls = {},
      }

      for name, config in pairs(servers) do
        config.on_attach = on_attach
        config.capabilities = require("cmp_nvim_lsp").default_capabilities()
        lspconfig[name].setup(config)
      end
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
