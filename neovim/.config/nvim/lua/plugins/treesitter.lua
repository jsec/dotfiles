local parsers = {
    'bash',
    'c',
    'cmake',
    'cpp',
    'css',
    'diff',
    'gitignore',
    'go',
    'graphql',
    'html',
    'http',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'query',
    'regex',
    'rust',
    'scss',
    'sql',
    'toml',
    'tsx',
    'typescript',
    'typespec',
    'vim',
    'vue',
    'yaml',
}

return {
    specs = {
        {
            src = 'https://github.com/nvim-treesitter/nvim-treesitter',
            version = '4916d6592ede8c07973490d9322f187e07dfefac',
        },
    },
    setup = function()
        local ts = require('nvim-treesitter')

        ts.setup({})
        ts.install(parsers):wait(300000)

        vim.api.nvim_create_autocmd('FileType', {
            callback = function(args)
                pcall(vim.treesitter.start, args.buf)
            end,
        })
    end,
}
