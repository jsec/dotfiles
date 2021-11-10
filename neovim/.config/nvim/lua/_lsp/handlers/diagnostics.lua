local M = {}

local ignored_error_codes = {
  [6133] = true,
  [80002] = true,
  [7016] = true,
  [2339] = true
}

function M.on_attach()
    vim.lsp.handlers["textDocument/publishDiagnostics"] =
        function(_, result, ctx, _)
            local config = {
                underline = true,
                virtual_text = true,
                signs = true,
                update_in_insert = true,
            }

            local uri = result.uri
            local bufnr = vim.uri_to_bufnr(uri)

            if not bufnr then
              return
            end

            local diagnostics = result.diagnostics

            if diagnostics ~= nil then
              local idx = 1
              while idx <= #diagnostics do
                if ignored_error_codes[diagnostics[idx].code] then
                  table.remove(diagnostics, idx)
                else
                  idx = idx + 1
                end
              end
            end

            for i, v in ipairs(diagnostics) do
                diagnostics[i].message = string.format("%s: %s", v.source, v.message)
            end

            vim.lsp.diagnostic.save(diagnostics, bufnr, ctx.client_id)

            if not vim.api.nvim_buf_is_loaded(bufnr) then
                return
            end

            vim.lsp.diagnostic.display(diagnostics, bufnr, ctx.client_id, config)
        end

    vim.o.updatetime = 250
end


return M
