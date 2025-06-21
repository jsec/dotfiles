return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local on_attach = require('util.lsp').on_attach
        require('mason').setup()

        lspconfig.vtsls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            root_dir = lspconfig.util.root_pattern('tsconfig.json', 'jsconfig.json', '.git'),
            settings = {
                format = { enable = false },
            },
        })

        lspconfig.eslint.setup({
            on_attach = function(client, bufnr)
                client.server_capabilities.documentFormattingProvider = true
                on_attach(client, bufnr)
            end,
            settings = {
                format = { enable = true },
                workingDirectories = { mode = 'auto' },
            },
        })

        lspconfig.gopls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.golangci_lint_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.pyright.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.taplo.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })

        lspconfig.ruff.setup({
            settings = {
                organizeImports = false,
            },
            on_attach = function(client)
                client.server_capabilities.hoverProvider = false
            end,
        })

        lspconfig.jsonls.setup({
            on_attach = on_attach,
            capabilitites = capabilities,
            settings = {
                schemas = {
                    {
                        fileMatch = { 'package.json' },
                        url = 'https://json.schemastore.org/package.json',
                    },
                    {
                        fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
                        url = 'https://json.schemastore.org/tsconfig',
                    },
                },
            },
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
