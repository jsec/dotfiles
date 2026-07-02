local modules = {
    'plugins.colorscheme.catppuccin',
    'plugins.barbecue',
    'plugins.blame',
    'plugins.blink',
    'plugins.conform',
    'plugins.gitsigns',
    'plugins.go',
    'plugins.kommentary',
    'plugins.leap',
    'plugins.lualine',
    'plugins.mini',
    'plugins.noice',
    'plugins.nvim-autopairs',
    'plugins.nvim-ts-autotag',
    'plugins.rustacean',
    'plugins.snacks',
    'plugins.tiny-inline-diagnostic',
    'plugins.todo-comments',
    'plugins.treesitter',
    'plugins.trouble',
    'plugins.colorscheme.jb',
    'plugins.colorscheme.nightfox',
    'plugins.colorscheme.vscode',
}

local build_hooks = {
    ['go.nvim'] = function()
        require('go.install').update_all_sync()
    end,
    ['nvim-treesitter'] = function()
        vim.cmd.TSUpdate()
    end,
}

vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(event)
        local hook = build_hooks[event.data.spec.name]

        if not hook or (event.data.kind ~= 'install' and event.data.kind ~= 'update') then
            return
        end

        if not event.data.active then
            vim.cmd.packadd(event.data.spec.name)
        end

        hook()
    end,
})

local configs = vim.iter(modules):map(require):totable()

local specs = vim.iter(configs):fold({}, function(acc, config)
    vim.list_extend(acc, config.specs or {})
    return acc
end)

vim.pack.add(specs, { confirm = false, load = true })

for _, config in ipairs(configs) do
    if config.setup then
        config.setup()
    end
end
