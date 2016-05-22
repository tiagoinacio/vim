autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>dp :Start! grunt protractor:dev
nnoremap <leader>dt :Start! make all && make open
nnoremap <C-s> :below 10sp term://$SHELL<cr>i
nnoremap <C-c> :Commands<CR>
nnoremap <C-q> :History:<CR>
