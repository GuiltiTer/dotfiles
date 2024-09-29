local mod_key = require("utils.mod_key_press")
local yabai_env = hs.hotkey.modal.new()
yabai_env.is_active = false

function yabai_env:entered()
	self.is_active = true
	hs.alert("Entered mode")
end
function yabai_env:exited()
	self.is_active = false
	hs.alert("Exited mode")
end

mod_key("shift", function()
	if yabai_env.is_active then
		yabai_env:exit()
	else
		yabai_env:enter()
	end
end, 0.2)

local yabai_exec = function(command)
	return os.execute("/opt/homebrew/bin/yabai " .. command)
end

yabai_env:bind("", "h", function()
	local ok = yabai_exec("-m window --focus west")
end)

yabai_env:bind("", "l", function()
	local ok = yabai_exec("-m window --focus east")
end)

yabai_env:bind("", "j", function()
	local ok = yabai_exec("-m window --focus south")
end)

yabai_env:bind("", "k", function()
	local ok = yabai_exec("-m window --focus north")
end)
