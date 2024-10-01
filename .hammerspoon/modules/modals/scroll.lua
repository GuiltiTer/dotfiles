local scroll_env = hs.hotkey.modal.new()

function scroll_env:entered() end
function scroll_env:exited() end

hs.hotkey.bind("alt", "'", function()
	scroll_env:enter()
end)

scroll_env:bind("", "escape", function()
	scroll_env:exit()
end)

local function scroll_vertical(size)
	return function()
		hs.eventtap.scrollWheel({ 0, size }, {}, "pixel")
	end
end

local function scroll_horizontal(size)
	return function()
		hs.eventtap.scrollWheel({ size, 0 }, {}, "pixel")
	end
end

scroll_env:bind("", "j", scroll_vertical(-40), nil, scroll_vertical(-40))
scroll_env:bind("", "k", scroll_vertical(40), nil, scroll_vertical(40))
scroll_env:bind("", "h", scroll_horizontal(40), nil, scroll_horizontal(40))
scroll_env:bind("", "l", scroll_horizontal(-40), nil, scroll_horizontal(-40))

scroll_env:bind("", "g", function()
	hs.eventtap.keyStroke("", "home")
end)

scroll_env:bind("shift", "g", function()
	hs.eventtap.keyStroke("", "end")
end)
