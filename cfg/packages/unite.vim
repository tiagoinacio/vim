" -quick-match -auto-preview
nnoremap <c-u> :Unite -start-insert<cr>
nnoremap <leader>dd :Unite directory<cr>
nnoremap <leader>di :Unite -start-insert directory<cr>
nnoremap <leader>dr :Unite -start-insert directory_rec/async<cr>
" Quickly switch lcd
nnoremap <silent> <leader>cd
      \ :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

call unite#filters#matcher_default#use(['matcher_fuzzy'])

let g:unite_source_grep_default_opts = '-i -A 3 -B 3'
" Using ag as recursive command.
" let g:unite_source_rec_async_command =
" \ ['ag', '--follow', '--nocolor', '--nogroup',
" \  '--hidden', '-g', '']

let g:unite_source_history_yank_enable = 1
