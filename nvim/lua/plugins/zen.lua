return {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup({
			window = {
				backdrop = 1,
			},
			plugins = {
				alacritty = {
					enabled = true,
					font = 19,
				},
				tmux = { enabled = true },
			},
			on_open = function()
				vim.g.zen_mode_flag = true
			end,
			on_close = function()
				vim.g.zen_mode_flag = false
			end,
		})
	end,
}
