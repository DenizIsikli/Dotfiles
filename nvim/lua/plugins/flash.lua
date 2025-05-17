-- Flash Configuration
return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        { "<leader>fs", mode = "n", function() require("flash").jump() end, desc = "Flash Search" },
    },
}
