return {
    cmd = { 'glint-language-server' },
    on_new_config = function(config, new_root_dir)
        local project_root =
            vim.fs.dirname(vim.fs.find('node_modules', { path = new_root_dir, upward = true })[1])
        local node_bin_path = project_root .. '/node_modules/.bin'
        local path = node_bin_path .. (vim.fn.has('win32') == 1 and ';' or ':') .. vim.env.PATH
        if config.cmd_env then
            config.cmd_env.PATH = path
        else
            config.cmd_env = { PATH = path }
        end
    end,
    filetypes = {
        'html.handlebars',
        'handlebars',
        'typescript',
        'typescript.glimmer',
        'javascript',
        'javascript.glimmer',
    },
    root_markers = {
        '.glintrc.yml',
        '.glintrc',
        '.glintrc.json',
        '.glintrc.js',
        'glint.config.js',
        'package.json',
    },
}
