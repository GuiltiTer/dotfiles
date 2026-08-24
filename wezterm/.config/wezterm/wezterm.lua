local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("events").init()
require("ui").apply_to_config(config)
require("mappings").apply_to_config(config)

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

return config
