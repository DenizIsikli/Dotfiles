-- Mason Configuration
return {
    {
        'williamboman/mason.nvim',
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
        },
        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',   -- Lua LSP
                    'pyright',  -- Python LSP
                    'clangd',   -- C/C++ LSP
                },
                automatic_installation = true,
            })
        end,
    },
}
