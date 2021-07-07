local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  print("LSP started.");
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<leader>df", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end
end

lspconfig.tsserver.setup{
  on_attach = function(client, bufnr)
    root_dir = lspconfig.util.root_pattern('.git', 'nx.json')
    client.resolved_capabilities.document_formatting = false
    on_attach(client, bufnr)
  end
}

local prettier = require('_efm/prettier')
local eslint = require('_efm/eslint')

local languages = {
    lua = {luafmt},
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
    root_dir = lspconfig.util.root_pattern('.git', 'nx.json'),
    filetypes = vim.tbl_keys(languages),
    init_options = {
        documentFormatting = true,
        codeAction = true
    },
    settings = {
        languages = languages,
        log_level = 1,
        log_file = '~/efm.log',
        on_attach = on_attach
    }
}
