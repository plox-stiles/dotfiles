local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- font settings
config.font_size = 10
config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = "Medium",
})

-- shell
config.default_prog = { "pwsh" }
config.color_scheme = "nordfox"
config.initial_cols = 120
config.initial_rows = 30
config.default_cursor_style = "SteadyBlock"

-- window decoration
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.92
-- system bell
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 150,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 150,
}
config.colors = {
	visual_bell = "#202020",
}

return config
