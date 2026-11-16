local parsers = {
	"rust",
	"go",
	"gomod",
	"python",
	"typescript",
	"tsx",
	"javascript",
	"svelte",
	"vue",
	"toml",
	"json",
	"bash",
	"markdown",
	"markdown_inline",
	"dockerfile",
	"jsdoc",
	"yaml",
	"html",
	"css",
	"scss",
	"lua",
	"regex",
	"dot",
	"cpp",
	"sql",
	"gdscript",
}

-- Installs missing parsers (async); needs the `tree-sitter` CLI and a C compiler
require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("at_treesitter", { clear = true }),
	callback = function(args)
		-- Highlighting (no-op if no parser for this filetype)
		if pcall(vim.treesitter.start, args.buf) then
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
