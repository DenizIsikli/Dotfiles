-- Plugin Manager: LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Alpha (Start Screen Dashboard)
  require('plugins.alpha'),
  -- Autopairs
  require('plugins.autopairs'),
  -- Comment
  require('plugins.comment'),
  -- Copilot
  require('plugins.copilot'),
  -- Friendly Snippets
  require('plugins.friendlysnippets'),
  -- Git
  require('plugins.git'),
  -- LSP Configurations
  require('plugins.lsp'),
  -- Lualine (Status Line)
  require('plugins.lualine'),
  -- Markdown Preview
  require('plugins.markdownpreview'),
  -- Mason Neovim
  require('plugins.mason'),
  -- Neo-Tree
  require('plugins.neotree'),
  -- Oil
  require('plugins.oil'),
  -- Telescope
  require('plugins.telescope'),
  -- Theme (e.g., Gruvbox)
  require('plugins.theme'),
  -- Transparent
  require('plugins.transparent'),
  -- Trouble
  require('plugins.trouble'),
})
