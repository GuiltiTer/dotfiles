local modules = {
	"emmy",
	"vim",
	"auto_reload",
	"modals.scroll",
}

for _, module in ipairs(modules) do
	require("modules." .. module)
end
