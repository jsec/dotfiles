local icons = require('_lsp/appearance/icons')
local borders = require('_lsp/appearance/borders')

local M = {}

function M.setup()
    icons.setup()
    borders.setup()
end

return M
