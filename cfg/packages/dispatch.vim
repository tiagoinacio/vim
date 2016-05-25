autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <C-s> :Dispatch!  && read<c-left><c-left><left>
" nnoremap <C-s> :below 10sp term://$SHELL<cr>i
nnoremap <C-c> :Commands<CR>
nnoremap <C-q> :History:<CR>
