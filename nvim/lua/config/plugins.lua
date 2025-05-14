-- Neo-tree
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.api.nvim_set_keymap('n', '<C-t>', ':Neotree<CR>', { noremap = true })

-- Alpha Dashboard: Exit to Dashboard
vim.keymap.set("n", "<leader>T", function()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  for _, buf in ipairs(buffers) do
    vim.cmd("bd! " .. buf.bufnr)
  end
  vim.cmd("Alpha")
end, { desc = "Close all buffers and go to Alpha dashboard" })

-- Nerd Font (used for icons)
vim.g.have_nerd_font = true
