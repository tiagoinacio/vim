autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>dd :Dispatch!  && read<c-left><c-left><left>
nnoremap <leader><C-d> :Dispatch!  && read<c-left><c-left><left>
" nnoremap <C-s> :below 10sp term://$SHELL<cr>i
nnoremap <C-q> :History:<CR>
