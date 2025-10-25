-- Telescope Configuration
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
    },
    config = function()
        local telescope = require('telescope')

        -- Load extensions
        telescope.load_extension('ui-select')

        -- Setup Telescope
        telescope.setup{
            defaults = {
                layout_config = {
                  prompt_position = 'top',
                  horizontal = {
                    mirror = false,
                    preview_cutoff = 100,
                    preview_width = 0.65,
                  },
                  vertical = {
                    mirror = true,
                    preview_cutoff = 0.4,
                  },
                  flex = {
                    flip_columns = 200,
                  },
                  height = 0.95,
                  width = 0.90,
                },
                file_ignore_patterns = {
                    "%.git/", "^.*/%.git/.*", "%.exe$", "%.dll$", "%.cache", "%.o", "%.a",
                    "%.out", "%.class", "%.pdf", "%.mkv", "%.mp4", "%.zip", "node_modules",
                },
                mappings = {
                    i = {  -- Insert mode mappings
                        ["<C-l>"] = "select_horizontal", -- Open in horizontal split
                        ["<C-h>"] = "select_vertical", -- Open in vertical split
                        ["<C-t>"] = "select_tab", -- Open in new tab
                        ["<C-k>"] = "move_selection_previous", -- Move selection up
                        ["<C-j>"] = "move_selection_next", -- Move selection down
                        ["<C-u>"] = require('telescope.actions').preview_scrolling_up, -- Scroll up in preview
                        ["<C-d>"] = require('telescope.actions').preview_scrolling_down, -- Scroll down in preview
                    },
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    find_command = { "fd", "--type", "f", "--hidden", "--color", "never" },
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
                    hidden = true,
                    find_command = { "fd", "--type", "f", "--hidden", "--color", "never" },
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

        -- Keymaps
        vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
    end
}
