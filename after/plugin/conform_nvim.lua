require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		css = { "prettierd" },
		c_sharp = { "clang-format" },
		go = { "goimports", "gofmt" },
		html = { "prettierd" },
		javascript = { "prettierd" },
		json = { "prettierd" },
		lua = { "stylua" },
		markdown = { "prettierd" },
		python = { "isort", "black" },
		rust = { "rustfmt", lsp_format = "fallback" },
		scss = { "prettierd" },
		sql = { "sql-formatter" },
		typescript = { "prettierd" },
		vue = { "prettierd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
