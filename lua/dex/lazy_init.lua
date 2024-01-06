local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable relenamee
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Trouble by folke is worth looking into

require("lazy").setup('dex.lazy');
