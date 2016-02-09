autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>dd :Dispatch!
nnoremap <leader>dp :Dispatch! grunt protractor:dev
nnoremap <leader>dt :Dispatch! make all && make open
nnoremap <leader>te :below 10sp term://$SHELL<cr>i
