local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'
local root_pattern = require("lspconfig.util").root_pattern
local on_attach = require("at.lsp.on-attach")

-- typescript-language-server
require('at.lsp.tsserver')

-- EFM-language-server
-- require('at.lsp.efm')

-- Diagnostic language server
require('at.lsp.diagnosticls')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- Setup servers
local servers = { 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
          loadOutDirsFromCheck = true;
        }
    }
  }
}

-- CSS
nvim_lsp.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- CSS Modules
nvim_lsp.cssmodules_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- HTML
nvim_lsp.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Eslint
-- nvim_lsp.eslint.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

-- Docker
nvim_lsp.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Svelte
nvim_lsp.svelte.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  default_config = {
    cmd = { bin_name, '--stdio' },
    filetypes = { 'svelte' },
  }
}

-- Vue
nvim_lsp.vuels.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Bash
nvim_lsp.bashls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

--Ruby
nvim_lsp.solargraph.setup {
  on_attach = on_attach,
  flags = {
	  debounce_text_changes = 150,
	}
}

-- YML 
nvim_lsp.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

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
