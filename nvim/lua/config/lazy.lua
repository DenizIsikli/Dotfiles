-- Plugin Manager: LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require('plugins.alpha'),
    require('plugins.autopairs'),
    require('plugins.blankline'),
    require('plugins.bufferline'),
    require('plugins.comment'),
    require('plugins.copilot'),
    require('plugins.flash'),
    require('plugins.friendlysnippets'),
    require('plugins.gitsigns'),
    require('plugins.lazygit'),
    require('plugins.lsp'),
    require('plugins.lualine'),
    require('plugins.markdownpreview'),
    require('plugins.neotree'),
    require('plugins.nvim-treesitter-context'),
    require('plugins.oil'),
    require('plugins.statuscol'),
    require('plugins.telescope'),
    require('plugins.theme'),
    require('plugins.trouble'),
    require('plugins.ufo'),
})
