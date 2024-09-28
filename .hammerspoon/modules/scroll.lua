local function scrollUp()
	hs.eventtap.scrollWheel({ 0, 40 }, {}, "pixel")
end

local function scrollDown()
	hs.eventtap.scrollWheel({ 0, -40 }, {}, "pixel")
end

local hyper = { "option", "cmd", "shift", "ctrl" }
hs.hotkey.bind(hyper, "j", scrollDown, nil, scrollDown)
hs.hotkey.bind(hyper, "k", scrollUp, nil, scrollUp)
