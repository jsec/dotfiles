local lspconfig = require('lspconfig')
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

local on_attach = function(client, bufnr)
    mappings(bufnr)
    appearance.setup()
    if client.resolved_capabilities.document_formatting then
        vim.cmd [[augroup Format]]
        vim.cmd [[autocmd! * <buffer>]]
        vim.cmd [[autocmd BufWritePost <buffer> lua require'_lsp/formatting/prettier'.format()]]
        vim.cmd [[augroup END]]

        handlers.registerHandlers()
    end
end

lspconfig.tsserver.setup{
  on_attach = function(client)
    root_dir = lspconfig.util.root_pattern('.git')
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
    require('nvim-lsp-ts-utils').setup()
  end
}

local prettier = require('_lsp/efm/prettier')
local eslint = require('_lsp/efm/eslint')

local languages = {
    typescript = {prettier, eslint},
    javascript = {prettier, eslint},
    typescriptreact = {prettier, eslint},
    javascriptreact = {prettier, eslint},
    yaml = {prettier},
    json = {prettier},
    html = {prettier},
    scss = {prettier},
    css = {prettier}
}

lspconfig.efm.setup {
    on_attach = on_attach,
    root_dir = vim.loop.cwd,
    filetypes = vim.tbl_keys(languages),
    init_options = {
        documentFormatting = true,
        codeAction = true
    },
    settings = {
        languages = languages,
        log_level = 1,
        log_file = '~/efm.log',
    }
}
