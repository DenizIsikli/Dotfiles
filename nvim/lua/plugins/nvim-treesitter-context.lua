return {
    "nvim-treesitter/nvim-treesitter-context",
    event = 'BufReadPost',
    opts = function()
        return { mode = 'cursor', max_lines = 0 }

    end,
}
