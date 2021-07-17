local icons = require('_lsp/appearance/icons')
local diagnostics = require('_lsp/appearance/diagnostics')

local M = {}

function M.setup()
    icons.setup()
    diagnostics.setup()
end

return M
