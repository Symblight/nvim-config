local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'
local root_pattern = require("lspconfig.util").root_pattern
local on_attach = require("at.lsp.on-attach")

-- typescript-language-server
require('at.lsp.tsserver')

-- EFM-language-server
require('at.lsp.efm')

-- Diagnostic language server
require('at.lsp.diagnosticls')

-- Setup servers
local servers = { 'pyright', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- CSS
nvim_lsp.cssls.setup {
  capabilities = capabilities,
}

-- HTML
nvim_lsp.html.setup {
  capabilities = capabilities,
}

-- Svelte
nvim_lsp.svelte.setup{
  capabilities = capabilities,
}

-- Bash
nvim_lsp.bashls.setup({
  on_attach = on_attach
})



-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)
