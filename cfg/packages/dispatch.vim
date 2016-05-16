autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>dd :Start! -wait=always
nnoremap <leader>dp :Dispatch! grunt protractor:dev
nnoremap <leader>dt :Dispatch! make all && make open
nnoremap <C-s> :below 10sp term://$SHELL<cr>i
nnoremap <C-c> :Commands<CR>
nnoremap <C-q> :History:<CR>
