local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'eslint',
    'rust_analyzer'
})
lsp.setup()


