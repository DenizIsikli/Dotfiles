-- Copilot Configuration
return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })

    vim.api.nvim_create_user_command('CopilotToggle', function ()
        vim.g.copilot_enabled = not vim.g.copilot_enabled
        if vim.g.copilot_enabled then
            vim.cmd('Copilot disable')
            print("Copilot Disabled")
        else
            vim.cmd('Copilot enable')
            print("Copilot Enabled")
        end
    end, { nargs = 0})

    vim.api.nvim_set_keymap("n", "<leader>ct", ":CopilotToggle<CR>", { noremap = true, silent = true })
  end,
}
