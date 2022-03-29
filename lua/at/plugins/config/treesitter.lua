require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "rust",
    "typescript",
    "svelte",
    "javascript",
    "toml",
    "json",
    "yaml",
    "html",
    "scss",
    "ruby",
    "css",
    "scss"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

