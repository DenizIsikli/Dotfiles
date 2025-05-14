-- Default Directory on Startup (Windows)
vim.cmd [[cd C:\\Users\\deniz\\Desktop\\Code]]

-- User Commands for Navigation (Windows)
vim.api.nvim_create_user_command('ProjectDir', "cd C:\\Users\\deniz\\Desktop\\Code", {})
vim.api.nvim_create_user_command('ConfigDir', "cd C:\\Users\\deniz\\AppData\\Local\\nvim", {})
