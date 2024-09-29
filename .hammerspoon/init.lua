local modules = {
	"emmy",
	"vim",
	"scroll",
	"auto_reload",
	-- "modals.yabai",
}

for _, module in ipairs(modules) do
	require("modules." .. module)
end
