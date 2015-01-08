let jshint2_read = 1
let jshint2_save = 1
let jshint2_height = 3
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 2
let g:syntastic_javascript_checkers = ['jshint']
