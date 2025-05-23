-- General Editor Settings
vim.wo.number = true

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
