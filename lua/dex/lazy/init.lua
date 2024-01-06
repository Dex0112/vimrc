return {
    -- Markdown Preview
    {
        'iamcco/markdown-preview.nvim',
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"},
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    'nvim-treesitter/nvim-treesitter-context',

    --Auto close punctuation
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end,
    },
}
