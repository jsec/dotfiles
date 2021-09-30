local M = {}

function M.on_attach()
    vim.lsp.handlers["textDocument/publishDiagnostics"] =
        function(_, result, ctx, _)
            local config = {
                underline = true,
                virtual_text = false,
                signs = true,
                update_in_insert = false,
            }

            local uri = result.uri
            local bufnr = vim.uri_to_bufnr(uri)

            if not bufnr then
              return
            end

            local diagnostics = result.diagnostics

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
    vim.cmd('autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false, show_header=false, border="double"})')
end

return M
