local on_attach = require("at.lsp.on-attach")

-- typescript-language-server
require("at.lsp.tsserver")

-- Diagnostic language server
require("at.lsp.diagnosticls")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Python interpreter: activated venv, else .venv/venv in the project root
local function python_path(root)
	local is_win = vim.fn.has("win32") == 1
	local bin = is_win and "Scripts/python.exe" or "bin/python"
	if vim.env.VIRTUAL_ENV then
		return vim.fs.joinpath(vim.env.VIRTUAL_ENV, bin)
	end
	for _, dir in ipairs({ ".venv", "venv", "env" }) do
		local path = root and vim.fs.joinpath(root, dir, bin)
		if path and vim.uv.fs_stat(path) then
			return path
		end
	end
	return vim.fn.exepath(is_win and "python" or "python3")
end

vim.lsp.config("pyright", {
	capabilities = capabilities,
	on_attach = on_attach,
	flags = { debounce_text_changes = 150 },
	-- A folder with its own venv is a project root, even inside a bigger git repo
	root_markers = {
		"pyrightconfig.json",
		"pyproject.toml",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		"Pipfile",
		".venv",
		"venv",
		".git",
	},
	before_init = function(_, config)
		config.settings = config.settings or {}
		config.settings.python = config.settings.python or {}
		config.settings.python.pythonPath = python_path(config.root_dir)
	end,
})

-- Python formatting/linting (pyright has no formatter)
vim.lsp.config("ruff", {
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		-- Leave hover to pyright
		client.server_capabilities.hoverProvider = false
		on_attach(client, bufnr)
	end,
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

-- Bash
vim.lsp.config("bashls", {
	capabilities = capabilities,
	on_attach = on_attach,
})

-- YML
vim.lsp.config("yamlls", {
	on_attach = on_attach,
	capabilities = capabilities,	filetypes = { "yaml" },
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
	capabilities = capabilities,	filetypes = { "gdscript" },
})

vim.lsp.enable({
	"pyright",
	"ruff",
	"rust_analyzer",
	"cssls",
	"html",
	"dockerls",
	"svelte",
	"bashls",
	"yamlls",
	"gopls",
	"gdscript",
})

-- Diagnostics display
vim.diagnostic.config({
	underline = true,
	virtual_text = {
		spacing = 4,
		prefix = "",
	},
})
