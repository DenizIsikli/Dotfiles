-- Copilot Configuration
return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        debounce = 100,
        enabled = true,
        keymap = { accept = "<C-j>" },
      }
    })
  end,
  keys = {
    {
      "<leader>ct",
      function()
        if require("copilot.client").is_disabled() then
          require("copilot.command").enable()
        else
          require("copilot.suggestion").dismiss()
          require("copilot.command").disable()
        end
      end,
      desc = "Toggle Copilot",
    },
  },
}
