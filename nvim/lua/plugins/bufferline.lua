-- Bufferline Configuration
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "thin",
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          }
        },
        name_formatter = function(buf)
          return vim.fn.fnamemodify(buf.name, ":t")
        end,
      },
      highlights = {
        fill = {
          bg = "#1d2021",
        },
        background = {
          fg = "#a89984",
          bg = "#1d2021",
        },
        buffer = {
          fg = "#a89984",
          bg = "#1d2021",
        },
        buffer_visible = {
          fg = "#ebdbb2",
          bg = "#1d2021",
        },
        buffer_selected = {
          fg = "#fbf1c7",
          bg = "#3c3836",
          gui = "bold",
        },

        numbers = {
          fg = "#928374",
          bg = "#1d2021",
        },
        numbers_selected = {
          fg = "#ffffff",
          bg = "#3c3836",
          gui = "bold,underline",
        },

        -- Dark gray vertical separators (no bright edges)
        separator = {
          fg = "#3c3836",
          bg = "#1d2021",
        },
        separator_visible = {
          fg = "#3c3836",
          bg = "#1d2021",
        },
        separator_selected = {
          fg = "#3c3836",
          bg = "#3c3836",
        },

        indicator_selected = {
          fg = "#b8bb26",
          bg = "#3c3836",
        },
      },
    })
  end,
}
