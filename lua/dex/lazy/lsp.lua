return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {
            -- Optional
            'williamboman/mason.nvim',
            build = ":MasonUpdate",
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
        { "hrsh7th/cmp-path" },
    },

    config = function()
        local lsp = require('lsp-zero')

        lsp.preset({
            float_border = 'rounded',
            call_servers = 'local',
            configure_diagnostics = true,
            setup_servers_on_start = true,
            set_lsp_keymaps = {
                preserve_mappings = false,
                omit = { 'gi' },
            },
            manage_nvim_cmp = {
                set_sources = 'recommended',
                set_basic_mappings = true,
                set_extra_mappings = false,
                use_luasnip = true,
                set_format = true,
                documentation_window = true,
            },
        })

        lsp.ensure_installed({
            'rust_analyzer',
        })

        -- Fix Undefined global 'vim'
        lsp.nvim_workspace()

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })

        cmp_mappings['<Tab>'] = nil
        cmp_mappings['<S-Tab>'] = nil

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        lsp.set_preferences({
            suggest_lsp_servers = true,
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

---@diagnostic disable-next-line: unused-local
       lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        end)

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true,
        })
    end
}
