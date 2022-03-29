-- require('github-theme').setup({
--   theme_style = "dark",
--   function_style = "italic",
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},
--   colors = {hint = "orange", error = "#ff0000"}
-- })

vim.cmd("colorscheme OceanicNext")
vim.cmd("syntax on")

vim.cmd("let g:oceanic_next_terminal_bold = 1")
vim.cmd("let g:oceanic_next_terminal_italic = 1")
vim.cmd("hi Comment gui=italic")
vim.cmd("hi htmlArg gui=italic")
vim.cmd("hi CursorLineNR guifg=#ffffff")

vim.cmd("let g:gruvbox_italic=1")
vim.cmd("let g:gruvbox_contrast_dark='medium'")

vim.cmd("colorscheme nordfox")

