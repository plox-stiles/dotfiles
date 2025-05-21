-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font_size = 12
config.line_height = 1.2
config.font = wezterm.font({
	--family = "FiraCode Nerd Font",
	family = "Hack Nerd Font Mono",
	-- weight = "Medium",
	weight = "Bold",
})

config.color_scheme = "flexoki-dark"

-- shell
config.default_prog = {
	"pwsh",
}
config.initial_cols = 120
config.initial_rows = 28
config.enable_tab_bar = false
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

-- config.window_decorations = "RESIZE"
config.window_background_opacity = 1.00
config.color_scheme_dirs = { "~/.colors" }

return config
