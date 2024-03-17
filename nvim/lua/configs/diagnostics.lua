-- Diagnostics Configuration
vim.diagnostic.config({
  virtual_text = true,  -- Inline Diagnostics
})

-- Setup diagnostics
vim.diagnostic.config({
  -- Enable inline diagnostics
  virtual_text = {
    prefix = '●', -- Options: '■', '▎', 'x'
    spacing = 4,  -- Sets the spacing between the end of the line and the diagnostic message
  },
  
  -- Other diagnostic configurations
  severity_sort = true,
  underline = true,
  update_in_insert = true,
})

