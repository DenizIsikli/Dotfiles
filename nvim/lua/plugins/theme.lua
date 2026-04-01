-- Oxocarbon: "B4mbus/oxocarbon-lua.nvim"
-- Gruvbox: "sainnhe/gruvbox-material"
-- Monoglow: "wnkz/monoglow.nvim"
-- Everforest: "sainnhe/everforest"
-- One Monokai: "cpea2506/one_monokai.nvim"


-- Oxocarbon setup
local function configure_oxocarbon()
    vim.opt.background = "dark" -- set this to dark or light
    vim.cmd.colorscheme "oxocarbon-lua"
    vim.g.oxocarbon_lua_transparent = false
    vim.g.oxocarbon_lua_alternative_telescope = true
    vim.g.oxocarbon_lua_disable_italic = true
end

-- Gruvbox Material setup
local function configure_gruvbox()
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.g.gruvbox_material_float_style = "dark"
    vim.g.gruvbox_material_enable_italic = 0
    vim.g.gruvbox_material_disable_italic_comment = 1
    vim.g.gruvbox_material_disable_terminal_colors = 0

    vim.cmd("colorscheme gruvbox-material")
end

-- Monoglow setup
local function configure_monoglow()
    vim.cmd.colorscheme("monoglow")
end

-- Everforest setup
local function configure_everforest()
    vim.o.background = "dark"
    vim.g.everforest_enable_italic = 1
    vim.cmd.colorscheme("everforest")
end

-- One Monokai setup
local function configure_one_monokai()
    vim.o.background = "dark"

    require("one_monokai").setup({
        transparent = true,
        italics = true,
    })

    vim.cmd.colorscheme("one_monokai")
end

return {
    "cpea2506/one_monokai.nvim",
    lazy = false,
    priority = 1000,
    config = configure_one_monokai,
}
