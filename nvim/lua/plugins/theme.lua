-- Theme Configuration

-- Theme(s) List: Gruvbox Material, Monoglow, Everforest
-- Gruvbox: "sainnhe/gruvbox-material",
-- Monoglow: "wnkz/monoglow.nvim",
-- Everforest: "sainnhe/everforest",
-- One Monokai: "cpea2506/one_monokai.nvim"

-- Gruvbox Material setup
local function configure_gruvbox()
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_ui_contrast = "low"
    vim.g.gruvbox_material_float_style = "dim"
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
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = configure_gruvbox,
}
