require("set.options")
require("set.maps")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

-- Setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	change_detection = {
		notify = false,
	},
})

local togglenumbers = vim.api.nvim_create_augroup("togglenumbers", { clear = true })
local exitcommands = vim.api.nvim_create_augroup("exitcommands", { clear = true })

-- Remove line numbers from neovim's terminal
vim.api.nvim_create_autocmd({ "TermOpen" }, {
	group = togglenumbers,
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Toggle non-relative line numbers in command mode
vim.api.nvim_create_autocmd({ "CmdlineEnter", "InsertEnter", "FocusLost", "WinLeave" }, {
	group = togglenumbers,
	callback = function()
		if vim.opt.number:get() then
			vim.opt.relativenumber = false
			vim.cmd("redraw")
		end
	end,
})

vim.api.nvim_create_autocmd({ "CmdlineLeave", "InsertLeave", "FocusGained", "WinEnter" }, {
	group = togglenumbers,
	callback = function()
		if vim.opt.number:get() then
			vim.opt.relativenumber = true
			vim.cmd("redraw")
		end
	end,
})

vim.g.zen_mode_flag = false

vim.api.nvim_create_autocmd({ "ExitPre" }, {
	group = exitcommands,
	callback = function()
		if vim.g.zen_mode_flag then
			vim.cmd("ZenMode")
		end
	end,
})
