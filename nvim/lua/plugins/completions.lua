return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	config = function()
		require("blink.cmp").setup({
			sources = {
				default = { "dadbod", "lsp", "path", "buffer", "markdown" },
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
					markdown = {
						name = "RenderMarkdown",
						module = "render-markdown.integ.blink",
						fallbacks = { "lsp" },
					},
				},
			},
			keymap = {
				preset = "default",
				["<Tab>"] = {
					function(cmp)
						if cmp.snippet_active() then
							return cmp.accept()
						else
							return cmp.select_and_accept()
						end
					end,
					"snippet_forward",
					"fallback",
				},
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			signature = { enabled = true },
			completion = {
				trigger = {
					show_on_insert_on_trigger_character = true,
				},
				ghost_text = {
					enabled = true,
				},
			},
		})
		vim.cmd("highlight BlinkCmpGhostText guifg=#5a524c")
	end,
}
