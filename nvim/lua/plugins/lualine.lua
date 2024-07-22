-- Lualine Configuration
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        local status, lualine = pcall(require, 'lualine')
        if not status then
            return
        end

        -- -- Solarized Light LuaLine Theme
        -- local lualine_solarized_light = require("lualine.themes.solarized_light")
        -- local new_colors = {
        --   normal = "#073642",
        --   insert = "#2aa198",
        --   command = "#FFDA7B",
        --   visual = "#FF61EF",
        --   black = "#000000",
        -- }

        -- lualine_solarized_light.normal.a.bg = new_colors.normal
        -- lualine_solarized_light.insert.a.bg = new_colors.insert
        -- lualine_solarized_light.visual.a.bg = new_colors.visual
        --
        --
        -- lualine_solarized_light.command = {
        --   a = {
        --     gui = "bold",
        --     bg = new_colors.command,
        --     fg = new_colors.black,
        --   },
        -- }

        -- -- Gruvbox Dark LuaLine Theme
        local lualine_gruvbox_dark = require('lualine.themes.gruvbox_dark')
        local new_colors = {
            normal = '#fb4934',
            insert = '#689d6a',
            command = '#fabd2f',
            visual = '#fe8019',
            black = '#000000',
        }

        lualine_gruvbox_dark.normal.a.bg = new_colors.normal
        lualine_gruvbox_dark.insert.a.bg = new_colors.insert
        lualine_gruvbox_dark.visual.a.bg = new_colors.visual

        lualine_gruvbox_dark.command = {
            a = {
                gui = 'bold',
                bg = new_colors.command,
                fg = new_colors.black,
            },
        }

        -- Lualine Setup
        lualine.setup({
            options = {
                theme = lualine_gruvbox_dark, -- Change according to the theme
                component_separators = { left = '|', right = '|' },
                section_separators = { left = '|', right = '|' },
                always_divide_middle = false,
                globalstatus = true,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'filename' },
                lualine_c = { 'branch', 'diff', 'diagnostics' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        })
    end,
}
