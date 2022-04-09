local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.load_extension("node_modules")
--telescope.load_extension("packer")
telescope.load_extension("notify")
telescope.load_extension("fzy_native")

require('telescope').setup{
  extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true
      }
    },
    pickers = {
      find_files = {
        hidden = true,
        theme = "dropdown"
    }
  },
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
