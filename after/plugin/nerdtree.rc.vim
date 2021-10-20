nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-a> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * lcd %:p:h
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let NERDTreeShowHidden=1
