nnoremap <silent> <leader>dt :ProjectRootExe NERDTreeFind<cr>
nnoremap <leader>ne :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nc :NERDTreeClose<cr>
nnoremap <leader>no :NERDTree<cr>

au BufRead,BufNewFile *.json setf json
let NERDTreeIgnore = ['tags', 'Session.vim', '.session.vim', '*.aux']

function! g:WorkaroundNERDTreeToggle()
  try | :NERDTreeToggle | catch | :NERDTree | endtry
endfunction

