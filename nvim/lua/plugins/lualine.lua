-- Lualine Configuration
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        local status, lualine = pcall(require, 'lualine')
        if not status then
            return
        end

        -- =====================
        -- THEMES
        -- =====================

        local function gruvbox_material_theme()
            return require('lualine.themes.gruvbox-material')
        end

        local function monoglow_theme()
            return require("lualine.themes._monoglow").get()
        end

        local function everforest_theme()
            return require("lualine.themes.everforest")
        end

        local function one_monokai_theme()
            return require("lualine.themes.one_monokai")
        end

        -- Choose theme
        local theme = gruvbox_material_theme()
        -- local theme = monoglow_theme()
        -- local theme = everforest_theme()
        -- local theme = one_monokai_theme()

        -- CONDITIONS
        local conditions = {
            buffer_not_empty = function()
                return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
            end,
            hide_in_width = function()
                return vim.fn.winwidth(0) > 80
            end,
        }

        local config = {
            options = {
                component_separators = '',
                section_separators = '',
                theme = theme,
                globalstatus = true,
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_y = {},
                lualine_z = {},
                lualine_c = {},
                lualine_x = {},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_y = {},
                lualine_z = {},
                lualine_c = {},
                lualine_x = {},
            },
        }

        -- Force all lualine text to white
        for _, mode in pairs(theme) do
            for _, section in pairs(mode) do
                section.fg = "#FFFFFF"
            end
        end

        local function ins_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        local function ins_right(component)
            table.insert(config.sections.lualine_x, component)
        end

        -- LEFT
        ins_left {
            function() return '▊' end,
            padding = { left = 0, right = 1 },
        }

        ins_left {
            function() return '' end,
            padding = { right = 1 },
        }

        ins_left {
            'filesize',
            cond = conditions.buffer_not_empty,
        }

        ins_left {
            'filename',
            cond = conditions.buffer_not_empty,
        }

        ins_left { 'location' }

        ins_left { 'progress' }

        ins_left {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = ' ', warn = ' ', info = ' ' },
        }

        -- CENTER
        ins_left {
            function() return '%=' end,
        }

        ins_left {
            function()
                local msg = 'No Active Lsp'
                local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
                local clients = vim.lsp.get_clients()

                if next(clients) == nil then
                    return msg
                end

                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end

                return msg
            end,
            icon = '  LSP:',
        }

        -- RIGHT
        ins_right {
            'o:encoding',
            fmt = string.upper,
            cond = conditions.hide_in_width,
        }

        ins_right {
            'fileformat',
            fmt = string.upper,
            icons_enabled = false,
        }

        ins_right {
            'branch',
            icon = '',
        }

        ins_right {
            'diff',
            symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
            cond = conditions.hide_in_width,
        }

        ins_right {
            function() return '▊' end,
            padding = { left = 1 },
        }

        lualine.setup(config)
    end,
}
