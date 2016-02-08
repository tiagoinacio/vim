autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>dd :Dispatch!
nnoremap <leader>dp :Dispatch! grunt blender && grunt protractor:dev
nnoremap <leader>db :Dispatch! grunt build
nnoremap <leader>dt :Dispatch! make all && make open
