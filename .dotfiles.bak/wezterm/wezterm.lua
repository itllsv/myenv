local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.keys = {
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ SendString = "clear\n" }),
	},
}
config.use_dead_keys = false
config.window_background_opacity = 0.9
config.macos_window_background_blur = 40
config.color_scheme = "Catppuccin Macchiato"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 18

return config
