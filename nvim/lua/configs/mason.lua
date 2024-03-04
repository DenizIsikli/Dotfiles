-- Mason Configuration
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
	"lua_ls", -- Lua LSP
        "pyright", -- Python LSP
        "clangd", -- C/C++ LSP
    },
    automatic_installation = true,
})

