-- Credit to Maria Solano
-- https://github.com/MariaSolOs/dotfiles/blob/1ede584ba860e0c6c2b2483e8dd778c140537758/.config/nvim/lsp/vtsls.lua

-- Use VS Code's bundled copy if available.
local function get_global_tsdk()
  local vscode_tsdk_path =
    '/Applications/%s/Contents/Resources/app/extensions/node_modules/typescript/lib'
  local vscode_tsdk = vscode_tsdk_path:format('Visual Studio Code.app')
  local vscode_insiders_tsdk = vscode_tsdk_path:format('Visual Studio Code - Insiders.app')

  if vim.fn.isdirectory(vscode_tsdk) == 1 then
    return vscode_tsdk
  elseif vim.fn.isdirectory(vscode_insiders_tsdk) == 1 then
    return vscode_insiders_tsdk
  else
    return nil
  end
end

---@type vim.lsp.Config
return {
  cmd = { 'vtsls', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
  root_dir = function(bufnr, on_dir)
    local fname = vim.uri_to_fname(vim.uri_from_bufnr(bufnr))
    local ts_root = vim.fs.find('tsconfig.json', { upward = true, path = fname })[1]
    local git_root = vim.fs.find('.git', { upward = true, path = fname })[1]

    if git_root then
      on_dir(vim.fn.fnamemodify(git_root, ':h'))
    elseif ts_root then
      on_dir(vim.fn.fnamemodify(ts_root, ':h'))
    end
  end,
  settings = {
    format = { enable = false },
    vtsls = {
      typescript = {
        globalTsdk = get_global_tsdk(),
      },
      autoUseWorkspaceTsdk = true,
      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
          entriesLimit = 100,
        },
      },
    },
  },
}
