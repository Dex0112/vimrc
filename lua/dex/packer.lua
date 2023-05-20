--   This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --Colorschemes
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
        end
    }

    use {
        'olimorris/onedarkpro.nvim',
        as = 'onedark'
    }

    use {
        'sainnhe/sonokai',
        as = 'sonokai',
        config = function()
            vim.g.sonokai_style = 'andromeda'
        end
    }

    use { 'catppuccin/nvim', as = 'catppuccin' }

    use { 'Mofiqul/dracula.nvim', as = 'dracula' }

    use { 'tiagovla/tokyodark.nvim', as = "tokyodark" }
    --End

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use 'nvim-treesitter/nvim-treesitter-context'
    use('theprimeagen/harpoon')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    --Discord status
    use 'andweeb/presence.nvim'

    --Auto close punctuation
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --git integration
    use 'tpope/vim-fugitive'

    --split terminal
    use 'vimlab/split-term.vim'
end)
