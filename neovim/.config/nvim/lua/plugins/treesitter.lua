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
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
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
