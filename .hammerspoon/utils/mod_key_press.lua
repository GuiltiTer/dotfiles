local mod_key_press = function(key, action, timeout)
	local pressed = false
	local released = false
	local other_key_pressed = false
	local hold_time = timeout or 0.1

	local mod_key_down = hs.eventtap.new({ hs.eventtap.event.types.flagsChanged }, function(event)
		local flags = event:getFlags()

		if flags[key] and not pressed then
			pressed = true
			released = false
			other_key_pressed = false

			hs.timer.doAfter(hold_time, function()
				if pressed and not released and not other_key_pressed then
					pressed = false
				end
			end)
		elseif not flags[key] and pressed then
			released = true

			if pressed and not other_key_pressed then
				action()
			end

			pressed = false
		end

		return false
	end)

	local other_keys_down = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
		if pressed then
			other_key_pressed = true
		end
		return false
	end)

	-- Start the event listeners
	mod_key_down:start()
	other_keys_down:start()
end

return mod_key_press
