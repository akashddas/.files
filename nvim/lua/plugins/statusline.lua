return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox-material",
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_c = {
					{
						"buffers",
						icons_enabled = true,
						buffers_color = {
							active = { fg = "#3c3836", bg = "#ea6962", gui = "bold" },
							inactive = { fg = "#d4be98", bg = "#3c3836", gui = "bold" },
						},
						symbols = {
							alternate_file = "",
							modified = " +",
						},
						max_length = vim.o.columns * 1 / 3,
					},
				},
				lualine_x = { "encoding" },
				lualine_y = { { "filetype", icons_enabled = false } },
				lualine_z = { "fileformat" },
			},
		})
	end,
}
