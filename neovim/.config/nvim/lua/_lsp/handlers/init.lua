local appearance = require('_lsp/handlers/appearance')
local diagnostics = require('_lsp/handlers/diagnostics')
local actions = require('_lsp/handlers/actions')

local M = {}

function M.on_attach()
    diagnostics.on_attach()
    appearance.on_attach()
    actions.on_attach()
end

return M