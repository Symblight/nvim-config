command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
nnoremap <silent> <Leader>bd :Bclose<CR>

map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>)
hi Normal guibg=NONE ctermbg=NONE
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
let g:rooter_patterns = ['.git', '.svn']
let g:netrw_liststyle = 4
"let g:netrw_banner = 0
"    1 - open files in a new horizontal split
"    2 - open files in a new vertical split
"    3 - open files in a new tab
"    4 - open in previous window
"let g:netrw_browse_split =4 
"The following sets the width to 25% of the page.
"let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_keepdir=0
" Disable arrows keys
nnoremap <left> :echo "no left for you!"<cr>
vnoremap <left> :<c-u>echo "no left for you!"<cr>
inoremap <left> <c-o>:echo "no left for you!"<cr>

nnoremap <right> :echo "no right for you!"<cr>
vnoremap <right> :<c-u>echo "no right for you!"<cr>
inoremap <right> <c-o>:echo "no right for you!"<cr>


nnoremap <up> :echo "no up for you!"<cr>
vnoremap <up> :<c-u>echo "no up for you!"<cr>
inoremap <up> <c-o>:echo "no up for you!"<cr>

nnoremap <down> :echo "no down for you!"<cr>
vnoremap <down> :<c-u>echo "no down for you!"<cr>
inoremap <down> <c-o>:echo "no down for you!"<cr>

