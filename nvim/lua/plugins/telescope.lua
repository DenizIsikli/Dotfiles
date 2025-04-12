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
                        ["<C-j>"] = "select_horizontal",  -- Open in horizontal split
                        ["<C-k>"] = "select_vertical",    -- Open in vertical split
                        ["<C-t>"] = "select_tab",         -- Open in new tab
                    },
                    n = {  -- Normal mode mappings
                        ["<C-j>"] = "select_horizontal",
                        ["<C-k>"] = "select_vertical",
                        ["<C-t>"] = "select_tab",
                    },
                },
            },
            pickers = {
                find_files = {
                    attach_mappings = function(_, map)
                        local actions = require('telescope.actions')
                        local action_state = require('telescope.actions.state')

                        local open_or_switch = function(prompt_bufnr)
                            local entry = action_state.get_selected_entry()
                            local filepath = entry.path or entry.filename
                            actions.close(prompt_bufnr)

                            for _, win in ipairs(vim.api.nvim_list_wins()) do
                                local win_buf = vim.api.nvim_win_get_buf(win)
                                if vim.api.nvim_buf_get_name(win_buf) == filepath then
                                    vim.api.nvim_set_current_win(win)
                                    return
                                end
                            end

                            vim.cmd('edit ' .. vim.fn.fnameescape(filepath))
                        end

                        map('i', '<CR>', open_or_switch)
                        map('n', '<CR>', open_or_switch)
                        return true
                    end
                },
                oldfiles = {
                    attach_mappings = function(_, map)
                        local actions = require('telescope.actions')
                        local action_state = require('telescope.actions.state')

                        local open_or_switch = function(prompt_bufnr)
                            local entry = action_state.get_selected_entry()
                            local filepath = entry.path or entry.filename
                            actions.close(prompt_bufnr)

                            for _, win in ipairs(vim.api.nvim_list_wins()) do
                                local win_buf = vim.api.nvim_win_get_buf(win)
                                if vim.api.nvim_buf_get_name(win_buf) == filepath then
                                    vim.api.nvim_set_current_win(win)
                                    return
                                end
                            end

                            vim.cmd('edit ' .. vim.fn.fnameescape(filepath))
                        end

                        map('i', '<CR>', open_or_switch)
                        map('n', '<CR>', open_or_switch)
                        return true
                    end
                }
            }
        }

        -- Keymap for <leader>p to search files
        vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
        -- Keymap for <leader>s to search old files
        vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
    end
}
