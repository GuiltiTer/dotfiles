local wezterm = require("wezterm")
local act = wezterm.action
return {
	{ key = "p",     mods = "CMD|SHIFT", action = act.ActivateCommandPalette },

	{ key = "t",     mods = "CMD|SHIFT", action = act.ShowTabNavigator },
	{ key = "l",     mods = "CMD",       action = act.ActivateTabRelative(1) },
	{ key = "h",     mods = "CMD",       action = act.ActivateTabRelative(-1) },

	{ key = "\\",    mods = "CMD",       action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "\\",    mods = "CMD|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "w",     mods = "CMD|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },
	{ key = "Enter", mods = "CMD",       action = act.TogglePaneZoomState },
	{ key = "p",     mods = "CMD",       action = act.PaneSelect({ alphabet = "asdfgh" }) },
	{ key = "h",     mods = "CMD",       action = act.ActivatePaneDirection("Left") },
	{ key = "l",     mods = "CMD",       action = act.ActivatePaneDirection("Right") },
	{ key = "k",     mods = "CMD",       action = act.ActivatePaneDirection("Up") },
	{ key = "j",     mods = "CMD",       action = act.ActivatePaneDirection("Down") },
}
