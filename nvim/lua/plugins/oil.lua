-- Oil Configuration
return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    config = function()
        require('oil').setup()
        vim.keymap.set("n", "´", require("oil").open, { desc = "Open Parent Directory" })
    end,
}
