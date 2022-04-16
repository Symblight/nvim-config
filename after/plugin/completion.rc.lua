-- Set completeopt to have a better completion experience

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.completeopt= "menu,menuone,noselect"
-- luasnip setup
local luasnip = require 'luasnip'
local lspkind = require 'lspkind'
lspkind.init()
-- nvim-cmp setup
local cmp = require 'cmp'

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
        with_text = false,
        maxwidth = 50, 
        menu = {
            buffer = "[buf]",
            nvim_lsp = "[LSP]",
            path = "[path]"
        }
    })
  },
  completion = {
    autocomplete = true,
    completeopt = 'menu,menuone,noselect',
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-S>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = "path" },
    { name = "buffer", keyword_length = 5 },
    { name = 'luasnip' },
  }),
}
