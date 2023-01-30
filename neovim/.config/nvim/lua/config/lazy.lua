local M = {}

function M.check_install()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

    if not vim.loop.fs_stat(lazypath) then
      vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
      })
    end

    vim.opt.rtp:prepend(lazypath)
end

function M.init()
    M.check_install()
    require('config.options')
    require('config.keymaps')
    require('lazy').setup('plugins-new')
end

return M
