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
    filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = root_pattern(
        "package.json",
        "tsconfig.json",
        "jsconfig.json",
        ".git",
        vim.fn.getcwd()
    ),
    docs = {
      description = [[
  https://github.com/theia-ide/typescript-language-server
  `typescript-language-server` can be installed via `:LspInstall tsserver` or by yourself with `npm`:
    ```sh
    npm install -g typescript-language-server
    ```
    ]],
    default_config = {
      root_dir = [[root_pattern("package.json")]],
      on_init = [[function to handle changing offsetEncoding]],
      capabilities = [[default capabilities, with offsetEncoding utf-8]]
    }
  }
}
