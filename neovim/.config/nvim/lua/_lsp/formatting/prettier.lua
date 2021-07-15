local M = {}

local prettier_options = {
    tabWidth = 2,
    singleQuote = true,
    trailingComma = "none",
    configPrecedence = "prefer-file"
}

local get_format_options = function()
    return string.format("format_%s", vim.bo.filetype)
end

vim.g.format_typescript = prettier_options
vim.g.format_javascript = prettier_options
vim.g.format_typescriptreact = prettier_options
vim.g.format_javascriptreact = prettier_options
vim.g.format_html = prettier_options
vim.g.format_css = prettier_options
vim.g.format_scss = prettier_options

M.format = function()
    vim.lsp.buf.formatting(vim.g[get_format_options()] or {})
end

return M
