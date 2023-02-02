return {
    { 'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle' },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'bash',
                    'c',
                    'cmake',
                    'cpp',
                    'css',
                    'diff',
                    'gitignore',
                    'go',
                    'graphql',
                    'help',
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
                    'toml',
                    'tsx',
                    'typescript',
                    'vim',
                    'vue',
                    'yaml'
                },
                highlight = { enable = true },
                query_linter = {
                    enable = true,
                    use_virtual_text = true,
                    lint_events = { 'BufWrite', 'CursorHold' }
                },
                playground = {
                    enable = true,
                    disable = {},
                    updatetime = 25,
                    persist_queries = true
                },
                additional_vim_regex_highlighting = false
            })
        end
    }
}
