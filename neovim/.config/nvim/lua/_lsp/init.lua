local lspconfig = require('lspconfig')
local null_ls = require('null-ls')
local appearance = require('_lsp/appearance')
local handlers = require('_lsp/handlers')

local function mappings(bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    mappings(bufnr)
    appearance.setup()
    vim.cmd [[augroup Format]]
    vim.cmd [[autocmd! * <buffer>]]
    vim.cmd [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting_sync()]]
    vim.cmd [[augroup END]]

    handlers.on_attach()
end

null_ls.setup {}
lspconfig['null-ls'].setup {}

lspconfig.tsserver.setup{
  capabilities = capabilites,
  on_attach = function(client, bufnr)
    root_dir = lspconfig.util.root_pattern('.git')
    client.resolved_capabilities.document_formatting = false
    on_attach(client)

    local ts_utils = require('nvim-lsp-ts-utils')
    ts_utils.setup {
        debug = false,
        disable_commands = false,
        enable_import_on_completion = true,

        import_all_timeout = 5000,
        import_all_priorities = {
            buffers = 4,
            buffer_content = 3,
            local_files = 2,
            same_file = 1
        },

        import_all_scan_buffers = 100,
        import_all_select_source = false,

        eslint_enable_code_actions = true,
        eslint_enable_disable_comments = true,
        eslint_bin = "eslint_d",
        eslint_config_fallback = nil,
        eslint_enable_diagnostics = true,

        complete_parens = true,
        signature_help_in_parens = true,

        enable_formatting = true,
        formatter = "prettier",
        formatter_config_fallback = nil,

        update_imports_on_move = true,
        require_confirmation_on_move = false,
        watch_dir = nil
    }

    ts_utils.setup_client(client)

    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gq", ":TSLspFixCurrent<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)

  end
}
