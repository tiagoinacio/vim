autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader><C-s> :Dispatch!  && read<c-left><c-left><left>
" nnoremap <C-s> :below 10sp term://$SHELL<cr>i
nnoremap <C-q> :History:<CR>
