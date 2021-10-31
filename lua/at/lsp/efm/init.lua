local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local root_pattern = require("lspconfig.util").root_pattern
local on_attach = require('at.lsp.on-attach')
local efm_languages = require('at.lsp.efm.format')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

nvim_lsp.efm.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = vim.tbl_keys(efm_languages),
    init_options = {documentFormatting = true, codeAction = false},
    settings = {
        languages = efm_languages,
    },
    root_dir = nvim_lsp.util.root_pattern { '.git/', '.' },
}
