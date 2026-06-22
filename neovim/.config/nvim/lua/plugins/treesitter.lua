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

        ts.setup({
            highlight = { enable = true },
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = { 'BufWrite', 'CursorHold' },
            },
            additional_vim_regex_highlighting = false,
        })

        ts.install(parsers):wait(300000)
    end,
}
