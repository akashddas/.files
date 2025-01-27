return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black", "isort" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				cmake = { "cmake_format" },
				java = { "astyle" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				tailwind = { "rustywind" },
				markdown = {
					"mdsf", -- run mdsf init to generate config and add `sleek` to sql object
					"mdformat",
				},
				zsh = { "shfmt" },
				sh = { "shfmt" },
				ocaml = { "ocp-indent", "ocamlformat" },
				toml = { "taplo" },
				sql = {
					"sleek",
					"sql-formatter",
				},
			},
			format_on_save = {
				timeout_ms = 750,
				lsp_format = "fallback",
			},
		})
	end,
}
