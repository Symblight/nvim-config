local on_attach = require("at.lsp.on-attach")

-- typescript-language-server
require("at.lsp.tsserver")

-- EFM-language-server
-- require('at.lsp.efm')

-- Diagnostic language server
require("at.lsp.diagnosticls")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.lsp.config("pyright", {
	capabilities = capabilities,
	on_attach = on_attach,
	flags = { debounce_text_changes = 150 },
})

vim.lsp.config("rust_analyzer", {
	on_attach = on_attach,
	capabilities = capabilities,
	flags = { debounce_text_changes = 150 },
	settings = {
		["rust-analyzer"] = {
			cargo = { loadOutDirsFromCheck = true },
		},
	},
})

-- CSS
vim.lsp.config("cssls", {
	on_attach = on_attach,
	capabilities = capabilities,
})

-- HTML
vim.lsp.config("html", {
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Docker
vim.lsp.config("dockerls", {
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Svelte
vim.lsp.config("svelte", {
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "svelte" },
})

-- Vue
vim.lsp.config("vuels", {
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Bash
vim.lsp.config("bashls", {
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Ruby
vim.lsp.config("solargraph", {
	on_attach = on_attach,
	flags = { debounce_text_changes = 150 },
})

-- YML
vim.lsp.config("yamlls", {
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Go
vim.lsp.config("gopls", {
	on_attach = on_attach,
	cmd = { "gopls", "serve" },
	filetypes = { "go", "gomod" },
	root_dir = function(fname)
		return vim.fs.root(fname, { "go.work", "go.mod", ".git" })
	end,
	settings = {
		gopls = {
			analyses = { unusedparams = true },
			staticcheck = true,
		},
	},
})

-- Godot script
vim.lsp.config("gdscript", {
	on_attach = on_attach,
	capabilities = capabilities,
})

vim.lsp.enable({
	"pyright",
	"rust_analyzer",
	"cssls",
	"html",
	"dockerls",
	"svelte",
	"vuels",
	"bashls",
	"solargraph",
	"yamlls",
	"gopls",
	"gdscript",
})

-- Diagnostics display
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	underline = true,
	virtual_text = {
		spacing = 4,
		prefix = "",
	},
})
