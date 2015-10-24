nmap <TAB> :GitGutterNextHunk<CR>
nmap <S-TAB> :GitGutterPrevHunk<CR>
noremap <leader>gp :GitGutterPreviewHunk<cr>
noremap <leader>gs :GitGutterStageHunk<cr>
noremap <leader>gr :GitGutterRevertHunk<cr>

let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_signs = 0
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_escape_grep = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_map_keys = 0

" hi GitGutterDeleteLine guibg=#fff5f5
" hi GitGutterChangeLine guibg=#f5faff
" hi GitGutterChangeDeleteLine guibg=#f5faff
" hi GitGutterAddLine guibg=#f8fff5
highlight GitGutterAdd ctermbg=NONE guibg=NONE
highlight GitGutterChange guibg=NONE ctermbg=NONE
highlight GitGutterChangeDelete guibg=NONE ctermbg=NONE
highlight GitGutterDelete guibg=NONE ctermbg=NONE
highlight GitGutterAdd guibg=NONE ctermfg=NONE
highlight GitGutterDelete guibg=NONE ctermfg=NONE
