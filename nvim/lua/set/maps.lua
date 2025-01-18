vim.g.mapleader = " "

local map = vim.keymap.set

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<leader>ee", ":Oil<CR>", { desc = "Toggle filetree" })
map("n", "<leader>so", ":source %<CR>", { desc = "Run lua code from the current file" })

map("n", "<leader>tt", ":terminal<CR>", { desc = "Launch terminal" })
map("t", "<Esc><Esc>", "<C-\\><C-N>", { desc = "Enter normal mode" })

map("n", "<leader>cc", ":enew<CR>", { desc = "Create new buffer" })
map("n", "<leader>nn", ":bnext<CR>", { desc = "Go to next buffer" })
map("n", "<leader>pp", ":bprev<CR>", { desc = "Go to previous buffer" })
map("n", "<leader>xx", ":bdelete!<CR>", { desc = "Delete current buffer" })
