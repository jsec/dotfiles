-- Split navigation
vim.keymap.set('n', '<c-h>', '<cmd>wincmd h<cr>', { silent = true })
vim.keymap.set('n', '<c-l>', '<cmd>wincmd l<cr>', { silent = true })

-- Split resizing
vim.keymap.set('n', '<c-j>', '<cmd>vertical resize -5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<c-k>', '<cmd>vertical resize +5<cr>', { noremap = true, silent = true })

-- Misc
vim.keymap.set('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
vim.keymap.set('n', '<c-o>', '<cmd>nohlsearch<cr>', { silent = true })
vim.keymap.set('i', 'jj', '<esc>', { noremap = true })
vim.keymap.set('n', ';w', '<cmd>w<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>`', '<cmd>ccl<cr>', { silent = true })
