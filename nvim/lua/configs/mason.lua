require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright", -- Python LSP
        "clangd", -- C/C++ LSP
        "tsserver", -- TypeScript/JavaScript LSP
        -- ... add other LSP servers as needed
    },
    automatic_installation = true, -- automatically install LSP servers if they're not present
})

