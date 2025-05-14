-- Default Directory on Startup (Windows)
vim.cmd [[cd C:\\Users\\deniz\\Desktop\\Code]] -- Project Directory
-- vim.cmd [[cd C:\\Users\\deniz\\AppData\\Local\\nvim]] -- Config Directory

-- User Commands for Navigation (Windows)
vim.api.nvim_create_user_command('ProjectDir', "cd C:\\Users\\deniz\\Desktop\\Code", {})
vim.api.nvim_create_user_command('ConfigDir', "cd C:\\Users\\deniz\\AppData\\Local\\nvim", {})

---------------------------------------------------------------------------

-- Default Directory on Startup (Linux)
-- vim.cmd [[cd ~/Code]] -- Project Directory
-- vim.cmd [[cd ~/.config/nvim]] -- Config Directory

-- User Commands for Navigation (Linux)
-- vim.api.nvim_create_user_command('ProjectDir', "cd ~/Code", {})
-- vim.api.nvim_create_user_command('ConfigDir', "cd ~/.config/nvim", {})
