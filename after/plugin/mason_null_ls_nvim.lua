require("mason-null-ls").setup({
	ensure_installed = {
		-- Linters
		"bacon",
		"eslint_d",
		"luacheck",

		-- Linters & Formatters
		"terraform",

		-- Formatters
		"black",
		"clang_format",
		"cmake_lang",
		"goimports",
		"gofmt",
		"isort",
		"prettierd",
		"stylua",
		"sql_formatter",
	},
})
