-- Theme Configuration
return {
    "sainnhe/gruvbox-material",
    config = function()
        vim.o.termguicolors = true

        vim.g.gruvbox_material_palette = 'original'
        vim.g.gruvbox_material_background = 'hard'
        vim.g.gruvbox_material_foreground = 'material'
        vim.g.gruvbox_material_transparent_background = 0
        vim.g.gruvbox_material_better_performance = 1
        vim.g.gruvbox_material_diagnostic_text_highlight = 1
        vim.g.gruvbox_material_enable_italic = 1
        vim.g.gruvbox_material_ui_contrast = "high"
        vim.g.gruvbox_material_cursor = 'red'
        vim.g.gruvbox_material_sign_column_background = 'none'

        vim.cmd([[
            highlight Normal guibg=NONE ctermbg=NONE
            highlight CursorLine guibg=#3c3836
            highlight StatusLine guibg=#504945
            highlight NonText guifg=#7c6f64
            highlight EndOfBuffer guifg=#3c3836
            highlight LineNr guifg=#7c6f64
            highlight SignColumn guibg=NONE
            highlight StatusLineNC guifg=#7c6f64 guibg=#3c3836
            highlight VertSplit guifg=#7c6f64
            highlight TabLine guifg=#7c6f64 guibg=#3c3836
            highlight TabLineFill guibg=#3c3836
            highlight TabLineSel guifg=#ebdbb2 guibg=#3c3836
        ]])

        vim.cmd("colorscheme gruvbox-material")
    end
}
