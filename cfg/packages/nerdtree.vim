nnoremap <silent> <leader>dt :ProjectRootExe NERDTreeFind<cr>
" nnoremap <leader>ne :NERDTreeToggle<cr>
nnoremap <leader>nf :call NERDTreeLocalFind()<cr>
nnoremap <leader>nc :NERDTreeClose<cr>
nnoremap <leader>no :NERDTree<cr>
let NERDTreeQuitOnOpen = 0
let NERDTreeMouseMode=3

au BufRead,BufNewFile *.json setf json
let NERDTreeIgnore = ['tags', 'Session.vim', '.session.vim', '*.aux']

function! g:NERDTreeLocalFind()
    :NERDTreeClose
    lcd %:p:h
    :NERDTreeFind
endfunction
function! g:WorkaroundNERDTreeToggle()
  try | :NERDTreeToggle | catch | :NERDTree | endtry
endfunction
