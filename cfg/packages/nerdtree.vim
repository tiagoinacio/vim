noremap <leader>ne :NERDTreeToggle<CR>
nnoremap <silent> <leader>dt :ProjectRootExe NERDTreeFind<cr>
nmap <leader>nf :NERDTreeFind<CR>

au BufRead,BufNewFile *.json setf json
let NERDTreeIgnore = ['tags', 'Session.vim', '.session.vim', '*.aux']

function! g:WorkaroundNERDTreeToggle()
  try | :NERDTreeToggle | catch | :NERDTree | endtry
endfunction

