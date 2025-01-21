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
				markdown = { "mdformat" },
				zsh = { "shfmt" },
				ocaml = { "ocp-indent", "ocamlformat" },
				toml = { "taplo" },
			},
			format_on_save = {
				timeout_ms = 1500,
				lsp_format = "fallback",
			},
		})
	end,
}
