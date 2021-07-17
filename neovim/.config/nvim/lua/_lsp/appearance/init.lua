local icons = require('_lsp/appearance/icons')
local borders = require('_lsp/appearance/borders')
local diagnostics = require('_lsp/appearance/diagnostics')

local M = {}

function M.setup()
    icons.setup()
    borders.setup()
    diagnostics.setup()
end

return M
