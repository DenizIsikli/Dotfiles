-- Ufo Configuration
return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "html",
          "css",
          "json",
          "python",
          "c",
          "cpp",
          "rust",
          "zig",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
