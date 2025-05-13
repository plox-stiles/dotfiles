-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = "Medium",
})

config.color_scheme = "flexoki-dark"

-- shell
config.default_prog = { "pwsh" }
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
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
config.window_background_opacity = 1.00
config.color_scheme_dirs = { "~/.colors" }
-- Finally, return the configuration to wezterm:
return config
