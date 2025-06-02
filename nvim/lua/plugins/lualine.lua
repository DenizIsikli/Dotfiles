-- Lualine Configuration
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        local status, lualine = pcall(require, 'lualine')
        if not status then
            return
        end

        -- Gruvbox Material LuaLine Theme
        local function gruvbox_material_theme()
            return require('lualine.themes.gruvbox-material')
        end

        -- Monoglow LuaLine Theme (default)
        local function monoglow_theme()
            return require("lualine.themes._monoglow").get()
        end

        -- Everforest LuaLine Theme
        local function everforest_theme()
            return require("lualine.themes.everforest")
        end

        -- One Monokai LuaLine Theme
        local function one_monokai_theme()
            return require("lualine.themes.one_monokai")
        end

        -- Set theme
        -- local theme = gruvbox_material_theme() -- Gruvbox Dark Theme
        -- local theme = monoglow_theme() -- Monoglow Theme
        -- local theme = everforest_theme() -- Everforest Theme
        local theme = one_monokai_theme() -- One Monokai Theme

         local function lualine_setup()
            lualine.setup({
                options = {
                    theme = theme,
                },
            })
        end

        lualine_setup()
    end,
}
