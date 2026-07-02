return {
    specs = {
        {
            src = 'https://github.com/ray-x/go.nvim',
        },
        {
            src = 'https://github.com/ray-x/guihua.lua',
        },
    },
    setup = function()
        local did_setup = false

        local function setup()
            if did_setup then
                return
            end

            did_setup = true
            require('go').setup()
        end

        vim.api.nvim_create_autocmd('CmdlineEnter', {
            once = true,
            callback = setup,
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'go', 'gomod' },
            callback = setup,
        })
    end,
}
