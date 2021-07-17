local appearanceHandlers = require('_lsp/handlers/appearance')
local formattingHandlers = require('_lsp/handlers/formatting')

local M = {}

function M.registerHandlers()
    appearanceHandlers.register()
    formattingHandlers.register()
end

return M
