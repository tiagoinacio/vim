nmap <TAB> :GitGutterNextHunk<CR>
nmap <S-TAB> :GitGutterPrevHunk<CR>
noremap <leader>gp :GitGutterPreviewHunk<cr>
noremap <leader>gs :GitGutterStageHunk<cr>
noremap <leader>gr :GitGutterRevertHunk<cr>

let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 0
let g:gitgutter_signs = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_escape_grep = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_map_keys = 0
highlight clear SignColumn
highlight GitGutterAdd ctermbg=NONE guibg=#232C31
highlight GitGutterChange ctermbg=NONE
highlight GitGutterChangeDelete ctermbg=NONE
highlight GitGutterDelete ctermbg=NONE
highlight GitGutterAdd ctermfg=NONE
highlight GitGutterDelete ctermfg=NONE

