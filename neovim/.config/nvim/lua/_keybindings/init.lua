-- Hop
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_words()<cr>", {})

-- Telescope
vim.api.nvim_set_keymap('n', '<c-p>', ':Telescope git_files<CR>', {noremap = true, silent = true})

-- NvimTree
vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
