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

local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' }, }
    },

    --Colorschemes
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require("rose-pine").setup()
        end,
        lazy = true
    },

    {
        'olimorris/onedarkpro.nvim',
        name = 'onedark',
        lazy = true
    },

    {
        'sainnhe/sonokai',
        name = 'sonokai',
        config = function()
            vim.g.sonokai_style = 'andromeda'
        end,
        lazy = true
    },

    { 'catppuccin/nvim',                 name = 'catppuccin', lazy = true },
    { 'Mofiqul/dracula.nvim',            name = 'dracula',    lazy = true },
    { 'tiagovla/tokyodark.nvim',         name = "tokyodark",  lazy = true },

    --Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-treesitter/playground',
    { 'nvim-treesitter/nvim-treesitter-context', lazy = true },

    --Harpoon
    { 'theprimeagen/harpoon',                    lazy = true },

    --Lsp
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },

    --Discord status
    { 'andweeb/presence.nvim', lazy = true },

    --Auto close punctuation
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end,
    },

    --git integration
    'tpope/vim-fugitive'
}

local opts = {}

require("lazy").setup(plugins, opts);
