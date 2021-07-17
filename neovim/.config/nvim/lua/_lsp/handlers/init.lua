local formattingHandlers = require('_lsp/handlers/formatting')

local M = {}

function M.registerHandlers()
    formattingHandlers.register()
end

return M
