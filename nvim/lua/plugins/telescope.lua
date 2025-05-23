-- Telescope Configuration
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
    },    config = function()
        local telescope = require('telescope')

        -- Load extensions
        telescope.load_extension('ui-select')

        -- Setup Telescope
        telescope.setup{
            defaults = {
                layout_strategy = "vertical",
                layout_config = {
                    prompt_position = "top",
                    mirror = true,
                },
                file_ignore_patterns = {
                    "%.git/",
                    "^.*/%.git/.*",
                    "%.exe$",
                    "%.dll$",
                    "%.cache",
                    "%.o",
                    "%.a",
                    "%.out",
                    "%.class",
                    "%.pdf",
                    "%.mkv",
                    "%.mp4",
                    "%.zip",
                    "node_modules",
                },
                mappings = {
                    i = {  -- Insert mode mappings
                        ["<C-k>"] = "select_horizontal",  -- Open in horizontal split
                        ["<C-j>"] = "select_vertical",    -- Open in vertical split
                        ["<C-t>"] = "select_tab",         -- Open in new tab
                    },
                    n = {  -- Normal mode mappings
                        ["<C-k>"] = "select_horizontal",
                        ["<C-j>"] = "select_vertical",
                        ["<C-t>"] = "select_tab",
                    },
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
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

        vim.cmd [[
          highlight! TelescopePromptPrefix guifg=#fb4934
          highlight! TelescopeSelection guibg=#3c3836 gui=bold
          highlight! TelescopeMatching guifg=#fabd2f
          highlight! TelescopeTitle guifg=#282828 guibg=#b8bb26 gui=bold
          highlight! TelescopePromptTitle guibg=#fabd2f guifg=#282828 gui=bold
          highlight! TelescopePreviewTitle guibg=#83a598 guifg=#282828 gui=bold
          highlight! TelescopeResultsTitle guibg=#d3869b guifg=#282828 gui=bold
        ]]

        -- Keymaps
        vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
    end
}
