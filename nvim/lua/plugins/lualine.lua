-- Lualine Configuration
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        local status, lualine = pcall(require, 'lualine')
        if not status then
            return
        end

        -- Solarized Light LuaLine Theme
        local function solarized_light_theme()
            local lualine_solarized_light = require("lualine.themes.solarized_light")
            local new_colors = {
                normal = "#073642",
                insert = "#2aa198",
                command = "#FFDA7B",
                visual = "#FF61EF",
                black = "#000000",
            }

            lualine_solarized_light.normal.a.bg = new_colors.normal
            lualine_solarized_light.insert.a.bg = new_colors.insert
            lualine_solarized_light.visual.a.bg = new_colors.visual

            lualine_solarized_light.command = {
                a = {
                    gui = "bold",
                    bg = new_colors.command,
                    fg = new_colors.black,
                },
            }

            return lualine_solarized_light
        end

        -- Gruvbox Dark LuaLine Theme
        local function gruvbox_dark_theme()
            local lualine_gruvbox_dark = require('lualine.themes.gruvbox_dark')
            local new_colors = {
                normal = '#3c3836',
                insert = '#689d6a',
                command = '#fb4934',
                visual = '#fe8019',
                white = '#ffffff',
                black = '#000000',
                pastel = '#ebdbb2',
            }

            lualine_gruvbox_dark.normal.a.bg = new_colors.normal
            lualine_gruvbox_dark.normal.a.fg = new_colors.white
            lualine_gruvbox_dark.insert.a.bg = new_colors.insert
            lualine_gruvbox_dark.insert.a.fg = new_colors.white
            lualine_gruvbox_dark.visual.a.bg = new_colors.visual
            lualine_gruvbox_dark.visual.a.fg = new_colors.white

            lualine_gruvbox_dark.command = {
                a = {
                    gui = 'bold',
                    bg = new_colors.command,
                    fg = new_colors.white,
                },
            }

            return lualine_gruvbox_dark
        end

        -- Monoglow LuaLine Theme (default)
        local function monoglow_theme()
            return require("lualine.themes._monoglow").get()
        end

        -- Miasma LuaLine Theme
        local function miasma_theme()
            local base = require('lualine.themes.gruvbox_dark')  -- use as a base

            local new_colors = {
                normal  = '#5f875f',  -- green
                insert  = '#78824b',  -- blue-ish
                command = '#c9a554',  -- cyan
                visual  = '#bb7744',  -- magenta
                white   = '#d7c483',  -- bright white
                black   = '#222222',  -- background
                fg      = '#c2c2b0',  -- main foreground
            }

            base.normal.a.bg = new_colors.normal
            base.normal.a.fg = new_colors.black
            base.insert.a.bg = new_colors.insert
            base.insert.a.fg = new_colors.black
            base.visual.a.bg = new_colors.visual
            base.visual.a.fg = new_colors.black

            base.command = {
                a = {
                    gui = 'bold',
                    bg = new_colors.command,
                    fg = new_colors.black,
                },
            }

            base.inactive.a.bg = new_colors.black
            base.inactive.a.fg = '#666666'  -- bright black

            return base
        end

        -- Set theme
        -- local theme = solarized_light_theme() -- Solarized Light Theme
        -- local theme = gruvbox_dark_theme() -- Gruvbox Dark Theme
        -- local theme = monoglow_theme() -- Monoglow Theme
        local theme = miasma_theme()

        -- Lualine setup functions
        local function custom_lualine_setup()
            lualine.setup({
                options = {
                    theme = theme,
                    component_separators = { left = '|', right = '|' },
                    section_separators = { left = '', right = '' },
                    always_divide_middle = false,
                    globalstatus = true,
                },
                sections = {
                    lualine_a = {
                        { 'mode', fmt = function(str) return '[' .. str .. ']' end }
                    },
                    lualine_b = { 'filename' },
                    lualine_c = { 'branch', 'diff', 'diagnostics' },
                    lualine_x = { 'encoding', 'filetype' },
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
        end

         local function lualine_setup()
            lualine.setup({
                options = {
                    theme = theme,
                },
            })
        end

        -- Set lualine setup
        -- custom_lualine_setup()
        lualine_setup()
    end,
}

