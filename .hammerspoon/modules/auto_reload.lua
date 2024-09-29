local reload_config = function(files)
	for _, file in pairs(files) do
		if file:sub(-4) == ".lua" then
			hs.reload()
			break
		end
	end
end
local config_files_watcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config)
config_files_watcher:start()
hs.alert.show("Config Reloaded")
