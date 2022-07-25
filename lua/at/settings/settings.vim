command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
nnoremap <silent> <Leader>bd :Bclose<CR>


map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>)


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

