return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local map = vim.keymap.set
		require("telescope").setup({
			pickers = {
				live_grep = {
					theme = "ivy",
				},
				lsp_references = {
					theme = "ivy",
				},
			},
			extensions = {
				fzf = {},
			},
		})
		local builtin = require("telescope.builtin")
		map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		map("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope find references" })
		map("n", "<leader>vn", function()
			builtin.find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end, { desc = "Telescope jump to neovim config directory" })
		map("n", "<leader>vz", function()
			builtin.find_files({
				cwd = "$DOTFILES/zsh/",
			})
		end, { desc = "Telescope jump to zsh config directory" })
	end,
}
