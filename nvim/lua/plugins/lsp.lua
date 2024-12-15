-- LSP and Treesitter Configuration
return {
    -- LSP Config
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'nvim-treesitter/nvim-treesitter', -- Treesitter for enhanced syntax highlighting
        'hrsh7th/nvim-cmp', -- Completion plugin
        'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
        'L3MON4D3/LuaSnip', -- Snippets plugin
        'saadparwaiz1/cmp_luasnip', -- Snippet completions
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local cmp = require('cmp')
        local luasnip = require('luasnip')

        -- Initialize mason
        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = { 'lua_ls', 'clangd', 'pyright', 'zls' },
        })

        -- nvim-cmp setup
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept completion with Enter
            }),
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            },
        })

        -- Treesitter setup
        require('nvim-treesitter.configs').setup {
            ensure_installed = { 'lua', 'c', 'cpp', 'python', 'zig' },
            auto_install = false,
            sync_install = false,
            ignore_install = {},
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }

        -- LSP on_attach function
        local on_attach = function(client, bufnr)
            local buf_set_keymap = vim.api.nvim_buf_set_keymap
            local opts = { noremap=true, silent=true }
            -- Keybinding for "Go to Definition"
            buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        end

        -- Capabilities for nvim-cmp
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- LSP servers setup
        local servers = { 'lua_ls', 'clangd', 'pyright', 'zls' }
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                on_attach = on_attach,
                capabilities = capabilities,
                flags = {
                    debounce_text_changes = 150,
                }
            }
        end

        -- Lua (lua_ls) specific setup
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                        path = vim.split(package.path, ';')
                    },
                    diagnostics = {
                        globals = { 'vim' }
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file('', true),
                        checkThirdParty = false
                    },
                    telemetry = {
                        enable = false
                    }
                }
            }
        }

        -- C/C++ (clangd) specific setup
        lspconfig.clangd.setup {
            cmd = { 'clangd', '--background-index' },
        }

        -- Python (pyright) specific setup
        lspconfig.pyright.setup {}

        -- Zig (zls) specific setup
        lspconfig.zls.setup {}
    end,
}
