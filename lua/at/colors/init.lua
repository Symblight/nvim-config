-- theme
vim.cmd("let g:gruvbox_italic=2")
-- vim.cmd("let g:gruvbox_contrast_dark='soft'")
-- vim.cmd("let g:gruvbox_termcolors=256")
vim.cmd("let g:gruvbox_bold=2")
vim.cmd("let g:gruvbox_color_column='bg3'")
vim.cmd("let g:gruvbox_color_column_fg='bg1'")
vim.cmd("let g:gruvbox_color_column_bg='bg2'")
vim.cmd("let g:gruvbox_transparent_bg = 0.5")
vim.cmd("let g:airline_powerline_fonts =1")

--vim.cmd("colorscheme nordfox")
-- vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme jellybeans")

-- vim.cmd("let g:jellybeans_use_lowcolor_black = 1")
vim.cmd("set background=dark")

vim.cmd("hi Comment gui=italic")
vim.cmd("hi htmlArg gui=italic")

vim.cmd("hi CursorLineNR guifg=#f6e58d") -- Highlighted number color
vim.cmd("highlight Normal ctermbg=black ctermfg=white")
vim.cmd("highlight LineNr guifg=grey") -- Numbers column
vim.cmd("highlight SignColumn guibg=#2d3436") -- Git column

vim.cmd("set termguicolors")
vim.cmd("syntax on")
-- Transparent
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
-- vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")


