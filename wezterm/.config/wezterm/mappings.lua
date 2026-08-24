local wezterm = require("wezterm")
local act = wezterm.action
local module = {}

local env = { PATH = "/opt/homebrew/bin:" .. require("os").getenv("PATH") }

local function smart_split_nvim_nav(key)
	local direction_keys = {
		h = "Left",
		j = "Down",
		k = "Up",
		l = "Right",
	}

	return {
		key = key,
		mods = "CTRL",
		action = wezterm.action_callback(function(win, pane)
			local is_vim = pane:get_user_vars().IS_NVIM == "true"
			if is_vim then -- pass the keys through to vim/nvim
				win:perform_action({ SendKey = { key = key, mods = "CTRL" } }, pane)
			else
				win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
			end
		end),
	}
end

local function toggle_show_tab_bar(win, pane)
	local overrides = win:get_config_overrides()
	overrides.enable_tab_bar = not overrides.enable_tab_bar
	win:set_config_overrides(overrides)
end

local keys = {
	{ key = "a", mods = "LEADER|CMD", action = act.ShowLauncherArgs({ flags = "FUZZY|LAUNCH_MENU_ITEMS" }) },

	{ key = "p", mods = "CMD|SHIFT", action = act.ActivateCommandPalette },
	{ key = "F11", mods = "", action = wezterm.action_callback(toggle_show_tab_bar) },

	{ key = "t", mods = "CMD", action = act.SpawnCommandInNewTab({ cwd = wezterm.home_dir }) },
	{ key = "t", mods = "SHIFT|CMD", action = act.SpawnTab("DefaultDomain") },
	{ key = "t", mods = "LEADER", action = act.ShowLauncherArgs({ flags = "FUZZY|TABS" }) },
	{ key = "l", mods = "CMD", action = act.ActivateTabRelative(1) },
	{ key = "h", mods = "CMD", action = act.ActivateTabRelative(-1) },
	{ key = "l", mods = "SHIFT|CMD", action = act.MoveTabRelative(1) },
	{ key = "h", mods = "SHIFT|CMD", action = act.MoveTabRelative(-1) },

	{ key = "\\", mods = "CMD", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "\\", mods = "CMD|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "w", mods = "CMD|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },
	{ key = "Enter", mods = "CMD", action = act.TogglePaneZoomState },
	{ key = "p", mods = "CMD", action = act.PaneSelect({ alphabet = "asdfgh" }) },

	smart_split_nvim_nav("h"),
	smart_split_nvim_nav("j"),
	smart_split_nvim_nav("k"),
	smart_split_nvim_nav("l"),
}

local launch_menu = {
	{
		label = "dotfiles",
		args = { "yadm", "enter", "zsh" },
		set_environment_variables = env,
	},
}

function module.apply_to_config(config)
	config.leader = { key = "a", mods = "CMD", timeout_milliseconds = 1000 }
	config.keys = keys
	config.launch_menu = launch_menu
end

return module
