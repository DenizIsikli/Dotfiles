-- Telescope Configuration
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
        local telescope = require('telescope')

        -- Setup Telescope
        telescope.setup{
            defaults = {
                mappings = {
                    i = {  -- Insert mode mappings
                        ["<C-w>"] = "select_horizontal",  -- Open in horizontal split
                        ["<C-r>"] = "select_vertical",    -- Open in vertical split
                        ["<C-t>"] = "select_tab",         -- Open in new tab
                    },
                    n = {  -- Normal mode mappings
                        ["<C-w>"] = "select_horizontal",
                        ["<C-r>"] = "select_vertical",
                        ["<C-t>"] = "select_tab",
                    },
                },
            }
        }

        -- Keymap for <leader>p to search files
        vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

        -- Keymap for <leader>s to search old files
        vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
    end
}
