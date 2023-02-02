return {
    {
        'lukas-reineke/lsp-format.nvim',
        opts = {
            javascript = {
                indent_width = 2,
                order = { 'eslint' }
            },
            typescript = {
                indent_width = 2,
                order = { 'eslint' }
            },
            html = {
                indent_width = 4
            },
            lua = {
                indent_width = 2
            }
        }
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "tsserver",
                "prettierd",
                "stylua",
                "luacheck",
                "eslint_d"
            }
        }
    },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local on_attach = require('util.lsp').on_attach
            require('mason').setup()
            require('mason-lspconfig').setup()

            lspconfig.tsserver.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                root_dir = lspconfig.util.root_pattern('tsconfig.json', '.git')
            })

            lspconfig.eslint.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                root_dir = lspconfig.util.root_pattern('.eslintrc', '.eslintrc.js', '.eslintrc.json', '.git'),
                settings = {
                    format = { enable = true }
                }
            })
        end
    }
}
