local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_cursor_style = "SteadyBlock"

config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
config.check_for_updates = false

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.enable_tab_bar = false

config.initial_cols = 180
config.initial_rows = 50

config.window_padding = {
  left = 5,
  right = 5,
  top = 0,
  bottom = 0,
}

config.font_size = 10.5
config.font = wezterm.font("FiraMono Nerd Font")
config.color_scheme = 'GruvboxDarkHard'

config.scrollback_lines = 10000
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.win32_system_backdrop = "Acrylic"

config.default_prog = {
  "C:\\Windows\\System32\\wsl.exe",
  "-d",
  "Debian",
  "-e",
  "tmux",
}

config.front_end = "WebGpu"

return config
