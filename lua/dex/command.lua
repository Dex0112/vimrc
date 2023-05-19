Prev_Dir = ''

function GoToDir(dir)
    Prev_Dir = vim.fn.getcwd()

    vim.api.nvim_set_current_dir(dir)

    vim.cmd(":e "..dir)
end

vim.cmd("command! -nargs=1 SetColorscheme lua SetColorscheme(<f-args>)")

vim.cmd("command! Config :lua GoToDir('$HOME/AppData/Local/nvim')")

vim.cmd("command! Return :lua GoToDir(Prev_Dir)")
