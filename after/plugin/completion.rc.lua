-- Set completeopt to have a better completion experience

vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- luasnip setup
local luasnip = require 'luasnip'
local lspkind = require 'lspkind'
lspkind.init()
-- nvim-cmp setup
local cmp = require 'cmp'

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 50, 
        menu = {
            buffer = "[buf]",
            nvim_lsp = "[LSP]",
            path = "[path]"
        }
    })
  },
  completion = {
    autocomplete = true,
    completeopt = 'menu,menuone,noinsert',
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-S>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = "path" },
    { name = "buffer", keyword_length = 5 },
    { name = 'luasnip' },
  },
  experimental = {
    -- I like the new menu better! Nice work hrsh7th
    native_menu = false,

    -- Let's play with this for a day or two
    ghost_text = true,
  },
}

 
