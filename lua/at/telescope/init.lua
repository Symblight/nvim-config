local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.load_extension("node_modules")
--telescope.load_extension("packer")
-- telescope.load_extension("notify")
telescope.load_extension("fzy_native")
telescope.load_extension("file_browser")

if vim.fn.isdirectory(vim.v.argv[2]) == 1 then
  vim.api.nvim_set_current_dir(vim.v.argv[2])
end

require('telescope').setup{
  extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true
      },
      file_browser = {
        override_generic_sorter = false,
        override_file_sorter = true
      },
    },
    pickers = {
      find_files = {
        hidden = true,
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
