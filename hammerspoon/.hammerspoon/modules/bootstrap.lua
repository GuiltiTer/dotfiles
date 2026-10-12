hs.loadSpoon("SpoonInstall")
spoon.SpoonInstall.use_syncinstall = true

local function install_and_use(spoons)
	local Install = spoon.SpoonInstall
	for _, spoon in ipairs(spoons) do
		local install_args = require(spoon)
		Install:andUse(install_args.name, install_args.args or {})
	end
end

install_and_use({
	"modules.spoons.emmylua",
	"modules.spoons.reload_config",
	"modules.spoons.recursive_binder",
})
