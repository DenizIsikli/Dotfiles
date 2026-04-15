local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	local gui_window = window:gui_window()

	local screen = wezterm.gui.screens().active

	local width = 180 * 8
	local height = 50 * 18

	local x = screen.x + (screen.width - width) / 2
	local y = screen.y + (screen.height - height) / 2

	gui_window:set_position(x, y)
end)

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
config.font = wezterm.font_with_fallback({
	"FiraMono Nerd Font",
	"Symbols Nerd Font",
	"Noto Color Emoji",
})
config.color_scheme = "Panda (Gogh)"

config.scrollback_lines = 10000
config.window_background_opacity = 0.8
config.color_scheme = "Grayscale Dark (base16)"

config.default_prog = {
	"C:\\Windows\\System32\\wsl.exe",
	"-d",
	"Debian",
	"-e",
	"tmux",
}

config.front_end = "WebGpu"

return config
