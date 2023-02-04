vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")

vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("v", "p", "\"+p")
vim.keymap.set("n", "P", "\"+P")
vim.keymap.set("n", "<C-j>", "O<Esc>")
vim.keymap.set("n", "<C-k>", "o<Esc>")
vim.keymap.set("n", "<A-j>", "jdd")
vim.keymap.set("n", "<A-k>", "kddj")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
