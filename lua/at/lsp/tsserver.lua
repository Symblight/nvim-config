local on_attach = require("at.lsp.on-attach")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.lsp.config("ts_ls", {
	on_attach = function(client, bf)
		client.server_capabilities.documentFormattingProvider = false
		on_attach(client, bf)
	end,
	capabilities = capabilities,
	init_options = { usePlaceholders = true },
	root_dir = function(fname)
		return vim.fs.root(fname, { "package.json", "tsconfig.json", "jsconfig.json", ".git" }) or vim.fn.getcwd()
	end,
})

vim.lsp.enable("ts_ls")
