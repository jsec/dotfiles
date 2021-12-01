local cmp = require('cmp')
local lspkind = require('lspkind')

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  formatting = {
    format = lspkind.cmp_format({ with_text = true, maxwidth = 50 })
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' }
  }
})
