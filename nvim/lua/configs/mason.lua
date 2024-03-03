require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright", -- Python LSP
        "clangd", -- C/C++ LSP
    },
    automatic_installation = true,
})

