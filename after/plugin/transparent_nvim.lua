local transparent = require("transparent")
transparent.setup({
	extra_groups = {
		"FoldColumn",
		"Folded",
		"lualine_a_inactive",
		"lualine_b_inactive",
		"lualine_c_inactive",
		"lualine_c_inactive",
		"NvimTreeNormal",
		"NormalFloat",
	},
})

transparent.clear_prefix("NvimTree")
transparent.clear_prefix("Telescope")
transparent.clear_prefix("Ufo")
transparent.clear_prefix("lualine_a_")
transparent.clear_prefix("lualine_b_")
transparent.clear_prefix("GitSigns")
transparent.clear_prefix("Noice")
transparent.clear_prefix("Notify")
