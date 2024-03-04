-- Directory Configuration
-- Setting the default directory to start in Neovim projects folder
vim.cmd [[cd C:\Users\deniz\Neovim]]
-- vim.cmd [[cd C:\Users\deniz\AppData\Local\nvim]]

-- Project Directory
vim.api.nvim_create_user_command('ProjectDir', 'cd C:\\Users\\deniz\\Neovim', {})

-- Configuration Directory
vim.api.nvim_create_user_command('ConfigDir', 'cd C:\\Users\\deniz\\AppData\\Local\\nvim', {})

