-- Transparent Configuration
return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1500,
  config = function()
    require("transparent").setup({
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },
      extra_groups = {},
      exclude_groups = {},
    })
    vim.api.nvim_set_keymap('n', '<leader>0', '<cmd>TransparentToggle<CR>', { noremap = true, silent = true })
  end,
}
