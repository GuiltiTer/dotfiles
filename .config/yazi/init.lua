require("git"):setup()
require("yatline"):setup({
	show_background = true,
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },
	component_positions = { "header", "tab", "status" },
	header_line = {
		left = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
		right = {
			section_a = {},
			section_b = {},
			section_c = {},
		},
	},
	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "count" },
			},
			section_c = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
		},
		right = {
			section_a = {},
			section_b = {
				{ type = "coloreds", custom = false, name = "permissions" },
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {},
		},
	},
})
