return {
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        opts = {
            signs = {
                add = { text = '│' },
                change = { text = '│' },
                delete = { text = '│' },
                topdelete = { text = '│' },
                changedelete = { text = '│' },
                untracked = { text = '│' },
            },
            signcolumn = true,
            numhl = false,
        },
    },
    {
        'mhartington/formatter.nvim',
        event = 'BufEnter',
        config = function() 
            require('formatter').setup({
                logging = true,
                log_level = vim.log.levels.WARN,
                filetype = {
                    typescript = {
                        require('formatter.filetypes.typescript').prettierd
                    },
                    javascript = {
                        require('formatter.filetypes.javascript').prettierd
                    }
                }
            })
        end
    },
    {
        'mfussenegger/nvim-lint',
        event = 'BufEnter',
        config = function()
            require('lint').linters_by_ft = {
                typescript = { 'eslint_d' },
                javascript = { 'eslint_d' },
                json = { 'jsonlint' },
                lua = { 'luacheck' }
            }
        end
    }
}
