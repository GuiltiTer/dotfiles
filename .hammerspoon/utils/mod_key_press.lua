local mod_key_press = function(key, action, timeout)
	local is_single_mod_pressed = false
	local hold_time = timeout or 0.1

	local mod_key_down = hs.eventtap.new({ hs.eventtap.event.types.flagsChanged }, function(event)
		is_single_mod_pressed = event:getFlags()[key]

		if is_single_mod_pressed then
			hs.timer.doAfter(hold_time, function()
				is_single_mod_pressed = false
			end)
		end

		return false
	end)

	local mod_key_up = hs.eventtap.new({ hs.eventtap.event.types.flagsChanged }, function(event)
		if not event:getFlags()[key] and is_single_mod_pressed then
			action()
		end

		return false
	end)

	local other_keys_down = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
		is_single_mod_pressed = false
		return false
	end)

	mod_key_down:start()
	mod_key_up:start()
	other_keys_down:start()
end

return {
	register_mod_key_press_action = mod_key_press,
}
