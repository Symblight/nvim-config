require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  ensure_installed = {
    "rust",
    "go",
    "python",
    "tsx",
    "typescript",
    "javascript",
    "svelte",
    "vue",
    "toml",
    "json",
    "bash",
    "markdown",
    "dockerfile",
    "jsdoc",
    "yaml",
    "html",
    "css",
    "scss",
    "lua",
    "regex",
    "dot"
  },
}

