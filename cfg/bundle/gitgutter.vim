let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_signs = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_highlight_lines = 1
let g:gitgutter_escape_grep = 1
highlight clear SignColumn
highlight GitGutterAdd ctermbg=234
highlight GitGutterChange ctermbg=234
highlight GitGutterChangeDelete ctermbg=234
highlight GitGutterDelete ctermbg=234
highlight GitGutterAdd ctermfg=118
highlight GitGutterDelete ctermfg=red
highlight GitGutterAddLine ctermfg=14
highlight GitGutterChangeLine ctermfg=14
highlight GitGutterDeleteLine ctermfg=14
highlight GitGutterChangeDeleteLine ctermfg=14
let g:gitgutter_sign_removed = '-'
