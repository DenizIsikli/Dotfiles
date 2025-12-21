-- General Editor Settings
vim.opt.paste = false
vim.wo.relativenumber = true
vim.o.termguicolors = true
vim.opt.swapfile = false
vim.opt.cmdheight = 1
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.laststatus = 3
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.g.have_nerd_font = true

vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "#424242" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#928374" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#32302f" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })

-- Diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
    spacing = 4,
  },
  severity_sort = true,
  underline = true,
  update_in_insert = true,
})
