-- Telescope Configuration
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
        local telescope = require('telescope')

        -- Setup Telescope
        telescope.setup{
            -- Your Telescope configuration here (if any)
        }

        -- Keymap for <leader>p to search files
        vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

        -- Keymap for <leader>s to search old files
        vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
    end
}
