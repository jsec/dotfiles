return {
    specs = {
        {
            src = 'https://github.com/folke/todo-comments.nvim',
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
