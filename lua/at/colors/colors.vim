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

" colorscheme spacecamp
" colorscheme vividchalk

let g:jellybeans_use_lowcolor_black = 1
let g:jellybeans_background_color= 'none'
 " colorscheme jellybeans

"
" set background=dark
" colorscheme gruvbox


let g:rehash256 = 1
let g:molokai_original =4
" colorscheme molokai


let g:sonokai_style = 'maia'
let g:sonokai_better_performance =0
let g:sonokai_transparent_background = 2
let g:sonokai_dim_inactive_windows = 1
let g:sonokai_enable_italic = 1
let g:sonokai_dim_inactive_windows = 1
let g:sonokai_menu_selection_background = 'green'
let g:sonokai_diagnostic_line_highlight = 1
" colorscheme sonokai

colorscheme kanagawa-wave

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
hi Normal guibg=NONE ctermbg=NONE
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

