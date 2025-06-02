-- Theme Configuration

-- Theme(s) List: Gruvbox Material, Monoglow, Everforest
-- Gruvbox: "sainnhe/gruvbox-material",
-- Monoglow: "wnkz/monoglow.nvim",
-- Everforest: "sainnhe/everforest",

-- Gruvbox Material setup
local function configure_gruvbox()
    vim.o.termguicolors = true
    vim.g.gruvbox_material_foreground = 'mix'
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_diagnostic_text_highlight = 1
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.g.gruvbox_material_sign_column_background = 'none'
    vim.cmd.colorscheme("gruvbox-material")
end

-- Monoglow setup
local function configure_monoglow()
    vim.o.termguicolors = true
    vim.cmd.colorscheme("monoglow")
end

-- Everforest setup
local function configure_everforest()
    vim.o.background = "dark"
    vim.g.everforest_enable_italic = 1
    vim.cmd.colorscheme("everforest")
end

return {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = configure_everforest,
}
