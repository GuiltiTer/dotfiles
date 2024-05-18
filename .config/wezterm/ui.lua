local wezterm = require("wezterm")
local env = require("env")
local module = {}

function module.apply_to_config(config)
	config.color_scheme = env.color_scheme

	config.font = wezterm.font(env.font.family, { weight = env.font.weight })
	config.font_size = env.font.size

	config.window_decorations = "RESIZE"
	config.adjust_window_size_when_changing_font_size = false
	config.window_padding = { top = 2, left = 2, right = 2, bottom = 0 }

	config.cursor_blink_rate = 600
	config.default_cursor_style = "BlinkingBlock"

	config.animation_fps = 30

	config.hide_tab_bar_if_only_one_tab = true

	config.front_end = "WebGpu"
	config.webgpu_power_preference = "HighPerformance"
end

return module
