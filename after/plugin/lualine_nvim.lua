local colors = require("tokyonight.colors").setup()

local config = {
	options = {
		theme = "tokyonight",
		section_separators = "",
		component_separators = "",
	},
	sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_y = {},
		lualine_z = {},
		lualine_x = {},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
	extensions = {
		"fugitive",
		"nvim-tree",
	},
}

local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

local function get_mode_color()
	local mode_color = {
		n = colors.red, -- Normal
		i = colors.green, -- Insert
		v = colors.blue, -- Visual
		[""] = colors.blue, -- Visual block
		V = colors.blue, -- Visual line
		c = colors.magenta, -- Command-line
		no = colors.red, -- NInsert
		s = colors.orange, -- Select
		S = colors.orange, -- Select line
		ic = colors.yellow, -- Insert (completion)
		R = colors.purple, -- Replace
		Rv = colors.purple, -- Virtual replace
		cv = colors.red, -- Command-line
		ce = colors.red, -- Ex
		r = colors.teal, -- Prompt
		rm = colors.teal, -- More
		["r?"] = colors.teal, -- Confirm
		["!"] = colors.red, -- Shell
		t = colors.red, -- Terminal
	}
	return mode_color[vim.fn.mode()]
end

local function get_mode()
	local mode = {
		n = "N", -- Normal
		i = "I", -- Insert
		v = "V", -- Visual
		[""] = "V", -- Visual block
		V = "V", -- Visual line
		c = "C", -- Command-line
		no = "N", -- NInsert
		s = "S", -- Select
		S = "S", -- Select line
		ic = "I", -- Insert (completion)
		R = "R", -- Replace
		Rv = "R", -- Virtual replace
		cv = "C", -- Command-line
		ce = "C", -- Ex
		r = "R", -- Prompt
		rm = "M", -- More
		["r?"] = "?", -- Confirm
		["!"] = "!", -- Shell
		t = "R", -- Terminal
	}
	return mode[vim.fn.mode()]
end

ins_left({
	get_mode,
	color = function()
		local mode_color = get_mode_color()
		return {
			fg = colors.black,
			bg = mode_color,
			gui = "bold",
		}
	end,
})

ins_left({
	function()
		return ""
	end,
	color = function()
		local mode_color = get_mode_color()
		return {
			fg = mode_color,
		}
	end,
	padding = 2,
})

ins_left({
	function()
		return "◀"
	end,
	color = {
		fg = colors.orange,
	},
})

ins_left({
	"filesize",
	color = {
		fg = colors.fg,
	},
	padding = 2,
})

ins_left({
	"filename",
	color = { fg = colors.orange },
	padding = 2,
})

ins_left({
	"location",
	color = { fg = colors.fg },
	padding = 2,
})

ins_left({
	"progress",
	color = {
		fg = colors.fg,
		gui = "bold",
	},
	padding = 2,
})

ins_left({
	"diagnostics",
	sources = { "nvim_diagnostic" },
	symbols = {
		error = " ",
		warn = " ",
		info = " ",
	},
	diagnostics_color = {
		error = {
			fg = colors.red,
		},
		warn = {
			fg = colors.yellow,
		},
		info = {
			fg = colors.teal,
		},
	},
	padding = 2,
})

ins_left({
	function()
		return "▶"
	end,
	color = {
		fg = colors.orange,
	},
})

ins_left({
	function()
		return "%="
	end,
})

ins_left({
	function()
		local msg = "No active LSP"
		local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
		local clients = vim.lsp.get_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	icon = " LSP:",
	color = {
		fg = colors.teal,
		gui = "bold",
	},
})

ins_right({
	function()
		return "◀"
	end,
	color = {
		fg = colors.orange,
	},
})

ins_right({
	"filetype",
	color = { fg = colors.fg },
})

ins_right({
	"o:encoding",
	fmt = string.upper,
	color = {
		fg = colors.fg,
		gui = "bold",
	},
	padding = 2,
})

ins_right({
	"fileformat",
	fmt = string.upper,
	icons_enabled = false,
	color = {
		fg = colors.fg,
		gui = "bold",
	},
	padding = 2,
})

ins_right({
	"branch",
	icon = "",
	color = {
		fg = colors.orange,
		gui = "bold",
	},
	padding = 2,
})

ins_right({
	"diff",
	symbols = {
		added = " ",
		modified = "󰝤 ",
		removed = " ",
	},
	diff_color = {
		added = {
			fg = colors.green,
		},
		modified = {
			fg = colors.orange,
		},
		removed = {
			fg = colors.red,
		},
	},
	padding = 2,
})

ins_right({
	function()
		return "▶"
	end,
	color = {
		fg = colors.orange,
	},
	padding = {
		right = 3,
	},
})

ins_right({
	function()
		return " "
	end,
	color = function()
		local mode_color = get_mode_color()
		return {
			bg = mode_color,
		}
	end,
})

require("lualine").setup(config)
