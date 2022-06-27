local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local root_pattern = require("lspconfig.util").root_pattern
local on_attach = require('at.lsp.on-attach')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


nvim_lsp.diagnosticls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx",  'json',  'css', 'less', 'scss', 'markdown', 'pandoc' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint_d',
        ignore = { ".git", "dist/", "node_modules/" },
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning',
          [0] = 'info',
        }
      },
      stylelint = {
        sourceName = 'stylelint',
        command = 'stylelint',
        args = {'--formatter', 'compact', '%filepath'},
        rootPatterns = {'.stylelintrc'},
        debounce = 100,
        formatPattern = {
          [[: line (\d+), col (\d+), (warning|error) - (.+?) \((.+)\)]],
          {
            line = 1,
            column = 2,
            security = 3,
            message = {4, ' [', 5, ']'},
          },
        },
        securities = {
          warning = 'warning',
          error = 'error',
        },
      },
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      eslint = {
        command = 'eslint_d',
        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier',
        rootPatterns = { '.git' },
        args = { '--stdin', '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      json = 'prettier',
      scss = 'prettier',
      less = 'prettier',
      typescriptreact = 'eslint', 
      json = 'prettier',
      markdown = 'prettier',
     }
  }
}

