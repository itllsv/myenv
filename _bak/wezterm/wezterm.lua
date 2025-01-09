local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 18.0
config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}

return config
