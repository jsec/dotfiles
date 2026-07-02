return {
    specs = {
        {
            src = 'https://codeberg.org/andyg/leap.nvim',
            version = 'd7f8ee64155b7790188f17a993390f32577cfb81',
        },
    },
    setup = function()
        vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')
    end,
}
