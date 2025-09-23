-- Mason, LSP and Completion Configuration
return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    config = function()
      -- Mason setup
      require("mason").setup()

      -- LSP and completion capabilities
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Keymaps on LSP attach
      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
        end

        map("n", "gd", vim.lsp.buf.definition)
        map("n", "gi", vim.lsp.buf.implementation)
        map("n", "gr", vim.lsp.buf.references)
        map("n", "K", vim.lsp.buf.hover)
        map("n", "<leader>rn", vim.lsp.buf.rename)

        -- Splits
        map("n", "gdj", function() vim.cmd("vsplit") vim.lsp.buf.definition() end)
        map("n", "gdk", function() vim.cmd("split") vim.lsp.buf.definition() end)
        map("n", "gij", function() vim.cmd("vsplit") vim.lsp.buf.implementation() end)
        map("n", "gik", function() vim.cmd("split") vim.lsp.buf.implementation() end)
      end

      -- Mason-LSPConfig setup
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
        handlers = {
          function(server)
            local lspconfig_util = vim.lsp.config or require("lspconfig")
            lspconfig_util[server].setup({
              on_attach = on_attach,
              capabilities = capabilities,
            })
          end,
        },
      })

      -- Completion setup
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
