do
  -- Enable faster startup by caching compiled Lua modules
  vim.loader.enable()

  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

  vim.g.have_nerd_font = true

  vim.o.number = true
  vim.o.relativenumber = true

  vim.o.mouse = 'a'

  vim.o.showmode = false

  vim.o.breakindent = true

  vim.o.undofile = true

  vim.o.ignorecase = true
  vim.o.smartcase = true

  vim.o.signcolumn = 'yes'

  vim.o.colorcolumn = '80'

  vim.o.updatetime = 250

  vim.o.timeoutlen = 300

  vim.o.splitright = true
  vim.o.splitbelow = true

  vim.o.shiftwidth = 4

  vim.o.list = true
  vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

  vim.o.inccommand = 'split'

  vim.o.cursorline = true

  vim.o.scrolloff = 10
  vim.o.confirm = true

  vim.g.netrw_browse_split = 0
  vim.g.netrw_banner = 0
  vim.g.netrw_winsize = 25
end
