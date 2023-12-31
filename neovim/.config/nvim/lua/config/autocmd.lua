vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    -- use pep8 standards
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4

    -- automatically capitalize boolean values. Useful if you come from a
    -- different language, and lowercase them out of habit.
    vim.cmd.inoreabbrev('<buffer> true True')
    vim.cmd.inoreabbrev('<buffer> false False')

    -- in the same way, we can fix habits regarding comments or None
    vim.cmd.inoreabbrev('<buffer> -- #')
    vim.cmd.inoreabbrev('<buffer> null None')
    vim.cmd.inoreabbrev('<buffer> none None')
    vim.cmd.inoreabbrev('<buffer> nil None')
  end,
})

local format_sync_grp = vim.api.nvim_create_augroup('GoImport', {})
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    require('go.format').goimport()
  end,
  group = format_sync_grp,
})
