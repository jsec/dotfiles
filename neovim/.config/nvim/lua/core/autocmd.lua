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

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    callback = function(args)
        local path = vim.api.nvim_buf_get_name(args.buf)

        if not vim.startswith(path, vim.fn.expand('~/src/solace')) then
            return
        end

        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
    end,
})
