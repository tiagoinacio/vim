autocmd FileType javascript let b:dispatch = 'grunt buid && grunt test'

nnoremap <leader>ds :Start
nnoremap <leader>dp :Dispatch! grunt blender && grunt protractor:dev<cr>
nnoremap <leader>db :Dispatch! grunt build<cr>
