return {
    specs = {
        {
            src = 'https://github.com/ray-x/go.nvim',
            version = '0768d79bbebdb1a112a845f9cd6293bfbd544dab',
        },
        {
            src = 'https://github.com/ray-x/guihua.lua',
            version = 'f8e06bd8a26dee3377d63c2adf1e57cdb58ac474',
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
