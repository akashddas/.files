return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")
		local servers = {
			lua_ls = true,
			clangd = true,
			ts_ls = true,
			ocamllsp = true,
			pylsp = true,
		}

		for server, config in pairs(servers) do
			if config == true then
				lspconfig[server].setup({ capabilities = capabilities })
			end
		end
	end,
}
