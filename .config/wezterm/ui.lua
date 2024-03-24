local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.color_scheme = "Tokyo Night"

	config.font = wezterm.font("Cascadia Code", { weight = "Medium" })
	config.font_size = 16.5

	config.window_decorations = "RESIZE"
	config.adjust_window_size_when_changing_font_size = false
	config.window_padding = { top = 2, left = 2, right = 2, bottom = 0 }

	config.cursor_blink_rate = 600
	config.default_cursor_style = "BlinkingBlock"

	config.animation_fps = 30
end

return module
