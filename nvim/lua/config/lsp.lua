-- Coc.nvim configuration for LSP and autocompletion
vim.g.coc_global_extensions = {'coc-pyright', 'coc-clangd', 'coc-json'}

-- Specific settings for Python, C, and C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  command = "setlocal ts=4 sts=4 sw=4 expandtab"
})

