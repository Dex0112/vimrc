vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set({'n', 'v'}, 'y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+y]])
vim.keymap.set({'n', 'v'}, '<leader>p', [["+p]])
vim.keymap.set({'n', 'v'}, '<leader>P', [["+P]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

    vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-a>", "GVgg")
