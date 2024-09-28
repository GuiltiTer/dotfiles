local modules = {
	"emmy",
	"vim",
	"scroll",
}

for _, module in ipairs(modules) do
	require("modules." .. module)
end
