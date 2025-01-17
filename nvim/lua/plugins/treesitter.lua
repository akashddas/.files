return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"cpp",
				"cmake",
				"html",
				"css",
				"javascript",
				"java",
				"toml",
			},
			sync_install = false,
			auto_install = false,
			ignore_install = {},
			modules = {
				"highlight",
			},
			highlight = {
				enable = true,
			},
		})
	end,
}
