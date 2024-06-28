-- Harpoon Configuration
return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require('harpoon')

        -- REQUIRED
        harpoon.setup()
        -- REQUIRED

        vim.g.mapleader = "æ"

        vim.keymap.set('n', '<leader>a', function() harpoon.mark.add_file() end)
        vim.keymap.set('n', '<leader>e', function() harpoon.ui.toggle_quick_menu() end)
        vim.keymap.set('n', '<leader>1', function() harpoon.ui.nav_file(1) end)
        vim.keymap.set('n', '<leader>2', function() harpoon.ui.nav_file(2) end)
        vim.keymap.set('n', '<leader>3', function() harpoon.ui.nav_file(3) end)
        vim.keymap.set('n', '<leader>4', function() harpoon.ui.nav_file(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set('n', '<leader>p', function() harpoon.ui.nav_prev() end)
        vim.keymap.set('n', '<leader>n', function() harpoon.ui.nav_next() end)

        -- Remove the current buffer from the Harpoon list
        vim.keymap.set('n', '<leader>5', function() harpoon.mark.rm_file() end)
    end,
}
