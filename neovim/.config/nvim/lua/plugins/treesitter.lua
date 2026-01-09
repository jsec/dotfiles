return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local ts = require('nvim-treesitter')

        local parsers = {
            'bash',
            'c',
            'cmake',
            'cpp',
            'css',
            'diff',
            'gitignore',
            'glimmer',
            'go',
            'graphql',
            'hcl',
            'html',
            'http',
            'javascript',
            'jsdoc',
            'json',
            'jsonc',
            'lua',
            'markdown',
            'markdown_inline',
            'python',
            'query',
            'regex',
            'rust',
            'scss',
            'sql',
            'terraform',
            'toml',
            'tsx',
            'typescript',
            'vim',
            'yaml',
        }

        for _, parser in ipairs(parsers) do
            pcall(ts.install, parser)
        end

        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                pcall(vim.treesitter.start)
            end
        })
    end,
}
