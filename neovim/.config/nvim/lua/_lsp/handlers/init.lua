local appearanceHandlers = require('_lsp/handlers/appearance')

local M = {}

function M.registerHandlers()
    appearanceHandlers.register()
end

return M
