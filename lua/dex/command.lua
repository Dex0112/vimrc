vim.cmd("command! -nargs=1 SetColorscheme lua SetColorscheme(<f-args>)")

vim.cmd("command! LTerm :vsplit | term")

vim.cmd("command! RTerm :vsplit | wincmd l | term")

vim.cmd("command! TTerm :split | term")

vim.cmd("command! BTerm :split | wincmd j | term")

vim.cmd([[command! Swap :lua GoToDir'$HOME/AppData/Local/nvim-data/Swap']])
