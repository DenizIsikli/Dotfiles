-- LSP Configuration
return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local lspconfig = require('lspconfig')
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        -- Initialize mason
        mason.setup()

        -- Installed LSP Servers
        mason_lspconfig.setup({
            ensure_installed = { 'lua_ls', 'clangd' },
        })

        -- LSP on_attach function
        local on_attach = function(client, bufnr)
        end

        -- LSP Configuration
        local servers = { 'lua_ls', 'clangd' }
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                on_attach = on_attach,
                flags = {
                    debounce_text_changes = 150,
                }
            }
        end

        -- Lua (lua_ls)
        lspconfig.lua_ls.setup {
            on_attach = on_attach,
            settings = {
                Lua = {
                    runtime = {
                        -- LuaJIT in the case of Neovim
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

        -- C/C++ (clangd)
        lspconfig.clangd.setup {
            cmd = { 'clangd', '--background-index' },
            on_attach = on_attach,
            flags = {
                debounce_text_changes = 150,
            },
        }

        -- -- Python (pyright)
        -- lspconfig.pyright.setup {
        --     on_attach = on_attach,
        --     flags = {
        --         debounce_text_changes = 150,
        --     },
        -- }
    end,
}
