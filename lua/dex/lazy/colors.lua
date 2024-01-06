return {
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
}
