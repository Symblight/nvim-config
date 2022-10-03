" gruvbox theme
let g:gruvbox_italic=2
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_termcolors=256
let g:gruvbox_bold=2
let g:gruvbox_color_column='bg3'
let g:gruvbox_color_column_fg='bg1'
let g:gruvbox_color_column_bg='bg2'
let g:gruvbox_transparent_bg = 0.5
let g:airline_powerline_fonts =1

"colorscheme gruvbox
colorscheme jellybeans
" colorscheme spacecamp
" colorscheme vividchalk

" let g:jellybeans_use_lowcolor_black = 1
set background=dark

hi Comment gui=italic
hi htmlArg gui=italic

" Highlighted number color
hi CursorLineNR guifg=#fbc531

highlight Normal ctermbg=black ctermfg=white

" Numbers column
highlight LineNr guifg=grey

highlight SignColumn guibg=#2d3436 " Git column

syntax on
let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
" Transparent
"
" hi Normal guibg=NONE ctermbg=NONE
" autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

