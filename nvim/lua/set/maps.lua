vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>ee", ":Oil<CR>", { desc = "Toggle filetree" })
map("n", "<leader>so", ":source %<CR>", { desc = "Run lua code from the current file" })

map("n", "<leader>tt", ":terminal<CR>", { desc = "Launch terminal" })
map("t", "<leader>nn", "<C-\\><C-N>", { desc = "Enter normal mode" })

map("n", "<leader>c", ":enew<CR>", { desc = "Create new buffer" })
map("n", "<leader>n", ":bnext<CR>", { desc = "Go to next buffer" })
map("n", "<leader>p", ":bprev<CR>", { desc = "Go to previous buffer" })
map("n", "<leader>xx", ":bdelete!<CR>", { desc = "Delete this buffer" })
