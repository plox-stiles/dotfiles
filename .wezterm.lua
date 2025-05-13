local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

local config = wezterm.config_builder()

-- font settings
config.font_size = 10
config.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = "Medium",
})

-- shell
config.default_prog = { "pwsh" }
config.enable_tab_bar = false
config.color_scheme = "nordfox"
config.initial_cols = 120
config.initial_rows = 28

-- window decoration
config.window_decorations = "RESIZE"

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

-- Finally, return the configuration to wezterm:
return config
