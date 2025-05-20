-- Flash Configuration
return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        modes = {
            char = {
                enabled = false, -- disables default 's' and 't' mappings in normal/visual/operator modes
            },
        },
    },
    keys = {
        { "<leader>fs", mode = "n", function() require("flash").jump() end, desc = "Flash Search" },
    },
}
