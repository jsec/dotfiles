return {
    specs = {
        {
            src = 'https://github.com/folke/todo-comments.nvim',
            version = '31e3c38ce9b29781e4422fc0322eb0a21f4e8668',
        },
    },
    setup = function()
        require('todo-comments').setup({
            highlight = {
                before = '',
                keyword = 'wide_bg',
                after = '',
            },
        })
    end,
}
