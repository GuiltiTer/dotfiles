local modules = {
	"emmy",
	"vim",
	"scroll",
	"auto_reload",
}

for _, module in ipairs(modules) do
	require("modules." .. module)
end
