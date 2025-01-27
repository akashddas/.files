return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("render-markdown").setup({
			bullet = {
				enabled = true,
				icons = { "●", "○", "◆", "◇" },
				ordered_icons = function(level, index, value)
					value = vim.trim(value)
					local value_index = tonumber(value:sub(1, #value - 1))
					return string.format("%d.", value_index > 1 and value_index or index)
				end,
				left_pad = 0,
				right_pad = 1,
				highlight = "RenderMarkdownBullet",
			},
		})
	end,
}
