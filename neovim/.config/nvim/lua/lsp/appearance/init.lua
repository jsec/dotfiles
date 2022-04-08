local diagnostics = require('lsp/appearance/diagnostics')

local M = {}

function M.setup()
    diagnostics.setup()
end

return M
