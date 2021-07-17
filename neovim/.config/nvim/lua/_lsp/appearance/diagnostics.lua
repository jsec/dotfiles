local M = {}

function M.setup()
    local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

    for type, icon in pairs(signs) do
      local hl = "LspDiagnosticsSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
end

return M
