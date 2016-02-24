nnoremap <leader>gp :GitGutterPreviewHunk<cr>
nnoremap <leader>gr :GitGutterRevertHunk<cr>

nnoremap <tab> :GitGutterPrevHunk<cr>
nnoremap <s-tab> :GitGutterNextHunk<cr>

nnoremap <leader>gt :GitGutterToggle<cr>

let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_realtime = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_signs = 1
let g:gitgutter_max_signs = 300  " default value
let g:gitgutter_escape_grep = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_map_keys = 0

" highlight GitGutterAdd ctermbg=NONE guibg=NONE
" highlight GitGutterChange guibg=NONE ctermbg=NONE
" highlight GitGutterChangeDelete guibg=NONE ctermbg=NONE
" highlight GitGutterDelete guibg=NONE ctermbg=NONE
" highlight GitGutterAdd guibg=NONE ctermfg=NONE
" highlight GitGutterDelete guibg=NONE ctermfg=NONE

" hi GitGutterDeleteLine guibg=#fff5f5 ctermbg=231
" hi GitGutterChangeLine ctermbg=195 guibg=#f5faff
" hi GitGutterChangeDeleteLine ctermbg=red guibg=#f5faff
" hi GitGutterAddLine ctermbg=194 guibg=#f8fff5
