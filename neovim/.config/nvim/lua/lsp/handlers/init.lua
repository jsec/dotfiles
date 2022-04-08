local appearance = require('lsp/handlers/appearance')
local diagnostics = require('lsp/handlers/diagnostics')
local actions = require('lsp/handlers/actions')

local M = {}

function M.on_attach()
    diagnostics.on_attach()
    appearance.on_attach()
    actions.on_attach()
end

return M
