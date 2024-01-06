return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

        local fugitive_group = vim.api.nvim_create_augroup("Dex_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd

        autocmd("BufWinEnter", {
            group = fugitive_group,
            pattern = "*",
            callback = function()
                if vim.bo.filetype ~= 'fugitive' then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd [[ Git push ]]
                end, opts)

                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({'pull', '--rebase'})
                end, opts)

                vim.keymap.set('n', "<leader>t", ":Git push -u origin ", opts)
            end
        })
    end
}
