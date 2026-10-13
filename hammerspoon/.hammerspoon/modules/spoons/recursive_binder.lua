local function app(name)
	return function()
		hs.application.launchOrFocus(name)
	end
end

local function url(u)
	return function()
		hs.urlevent.openURL(u)
	end
end

local function shell(cmd)
	return function()
		hs.execute(cmd, true)
	end
end

local function press(mods, k)
	return function()
		hs.eventtap.keyStroke(mods, k)
	end
end

return {
	name = "RecursiveBinder",
	args = {
		config = {
			escapeKey = { {}, "escape" },
			helperEntryEachLine = 1,
			helperEntryLengthInChar = 20,
			helperFormat = {
				atScreenEdge = 0,
				radius = 16,
				fillColor = { white = 0, alpha = 0.9 },
				strokeColor = { white = 0, alpha = 0 },
				textFont = "JetBrains Mono",
				textSize = 16,
			},
		},
		fn = function(rb)
			local key = rb.singleKey
			local keymap = {
				[key("m", "media")] = {
					[key("m", "music")] = app("Music"),
					[key("M", "messages")] = app("Messages"),
					[key("t", "telegram")] = app("Telegram"),
				},

				[key("f", "find")] = {
					[key("d", "downloads")] = shell("open ~/Downloads"),
					[key("u", "user")] = shell("open ~"),
					[key("f", "find")] = url("raycast-x://extensions/raycast/file-search/search-files"),
				},

				[key("t", "terminal")] = app("ghostty"),
				[key("b", "safari")] = app("Safari"),

				[key("a", "actions")] = url("raycast-x://extensions/raycast/navigation/search-menu-bar-items"),
				[key("e", "emoji")] = url("raycast-x://extensions/raycast/emoji-symbols/search-emoji-symbols"),
				[key("k", "kill")] = url("raycast-x://extensions/rolandleth/kill-process/index"),
			}

			hs.hotkey.bind({ "ctrl", "shift", "alt", "cmd" }, "space", rb.recursiveBind(keymap))
		end,
	},
}
