-- Lualine configuration
require('lualine').setup{
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
    section_separators = {'', ''},
    component_separators = {'', ''},
  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      'filename',
      function()
        return vim.fn['nvim_treesitter#statusline'](180)
      end},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}  },
}

