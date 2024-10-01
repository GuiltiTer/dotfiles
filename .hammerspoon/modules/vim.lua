local mod_key = require("utils.mod_key_press")

local VimMode = hs.loadSpoon("VimMode")
local vim_mode = VimMode:new()

vim_mode
	:disableForApp("Code")
	:disableForApp("zoom.us")
	:disableForApp("iTerm")
	:disableForApp("iTerm2")
	:disableForApp("Terminal")
	:disableForApp("Kitty")
	:shouldDimScreenInNormalMode(false)
	:shouldShowAlertInNormalMode(true)
	:setAlertFont("Fira Code")

mod_key.register_mod_key_press_action("ctrl", function()
	if vim_mode:isMode("insert") then
		vim_mode:enter()
	else
		vim_mode:exit()
	end
end)
