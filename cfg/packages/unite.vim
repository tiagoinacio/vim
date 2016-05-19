" -quick-match -auto-preview
nnoremap <c-u> :Unite -start-insert<cr>
nnoremap <leader>ne :Unite -start-insert directory<cr>
nnoremap <leader>nf :Unite -start-insert directory_rec/async<cr>

call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Using ag as recursive command.
let g:unite_source_rec_async_command =
\ ['ag', '--follow', '--nocolor', '--nogroup',
\  '--hidden', '-g', '']

let g:unite_source_grep_command = 'ag'
let g:unite_source_history_yank_enable = 1
