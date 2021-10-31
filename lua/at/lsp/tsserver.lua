local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local root_pattern = require("lspconfig.util").root_pattern
local on_attach = require('at.lsp.on-attach')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


nvim_lsp.tsserver.setup {
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        on_attach(client, bufnr)
    end,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = root_pattern(
        "package.json",
        "tsconfig.json",
        "jsconfig.json",
        ".git",
        vim.fn.getcwd()
    )
}
