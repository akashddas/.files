return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"hrsh7th/nvim-cmp",
			config = function()
				local cmp = require("cmp")
				cmp.setup({
					mapping = cmp.mapping.preset.insert({
						["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
						["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
						["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
						["<S-Tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
					}),
				})
			end,
		},
	},
	config = function()
		require("obsidian").setup({
			disable_frontmatter = true,
			workspaces = {
				{
					name = "personal",
					path = "$VAULTS/personal/notes/",
				},
			},
			templates = {
				folder = "$VAULTS/personal/templates",
				date_format = "%Y-%m-%d-%a",
				time_format = "%H:%M",
			},
		})
	end,
}
