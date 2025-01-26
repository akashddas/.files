-- Local options
local set = vim.opt_local
set.conceallevel = 1

-- Keymaps
vim.g.mapleader = " "
local map = vim.keymap.set
map("n", "<leader>ot", ":ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
