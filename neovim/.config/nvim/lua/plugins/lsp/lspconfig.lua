return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local on_attach = require('util.lsp').on_attach
        require('mason').setup()

        lspconfig.golangci_lint_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.taplo.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.tsp_server.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
    end,
}
