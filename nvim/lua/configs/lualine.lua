-- Lualine Configuration
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_solarized_light = require("lualine.themes.solarized_light")

local new_colors = {
  normal = "#073642",
  insert = "#2aa198",
  command = "#FFDA7B",
  visual = "#FF61EF",
  black = "#000000",
}

lualine_solarized_light.normal.a.bg = new_colors.normal
lualine_solarized_light.insert.a.bg = new_colors.insert
lualine_solarized_light.visual.a.bg = new_colors.visual


lualine_solarized_light.command = {
  a = {
    gui = "bold",
    bg = new_colors.command,
    fg = new_colors.black,
  },
}

lualine.setup({
  options = {
    theme = lualine_solarized_light,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    always_divide_middle = false,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        'mode',
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        }
      },
    },
    lualine_b = {
      {
        'filename',
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        }
      },
    },
    lualine_c = { 'branch', 'diff', 'diagnostics' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = {
      {
        'location',
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        }
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})

