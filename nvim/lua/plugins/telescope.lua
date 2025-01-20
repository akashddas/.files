return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
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
		local map = vim.keymap.set
		local builtin = require("telescope.builtin")
		map("n", "<leader>bb", builtin.buffers, { desc = "Telescope show buffers" })
		map("n", "<leader>gs", builtin.live_grep, { desc = "Telescope live grep" })
		map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		map("n", "<leader>fk", builtin.keymaps, { desc = "Telescope show keymaps" })
		map("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope find references" })
		map("n", "<leader>dot", function()
			builtin.find_files({
				cwd = vim.fn.getenv("DOTFILES"),
			})
		end, { desc = "Telescope open dotfiles directory" })
	end,
}
