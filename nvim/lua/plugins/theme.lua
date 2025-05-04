-- Theme Configuration

-- Gruvbox:
--   return { "sainnhe/gruvbox-material", config = configure_gruvbox }
-- Monoglow:
--   return { "wnkz/monoglow.nvim", config = configure_monoglow }
-- Miasma:
--  return { "xero/miasma.nvim", config = configure_miasma }

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

    vim.cmd("colorscheme gruvbox-material")

    vim.cmd([[
        highlight CursorLine guibg=#303030 guifg=NONE
        highlight CursorLineNr guifg=#FFFFFF
        highlight CursorColumn guibg=#303030
        highlight Visual guibg=#303030 guifg=NONE
        highlight Normal guibg=NONE ctermbg=NONE
    ]])
end

-- Monoglow setup
local function configure_monoglow()
    vim.o.termguicolors = true
    vim.cmd("colorscheme monoglow") -- or monoglow-z, monoglow-lack, monoglow-void
end

-- Miasma setup
local function configure_miasma()
    vim.o.termguicolors = true
    vim.cmd("colorscheme miasma")
end

-- Currently using Monoglow:
return {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = configure_miasma
}

