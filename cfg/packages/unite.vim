" -quick-match -auto-preview
nnoremap <c-u> :Unite -start-insert<cr>
nnoremap <leader>dr :Unite directory_rec -start-insert<cr>
" Quickly switch lcd
nnoremap <silent> <leader>mru
      \ :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

call unite#filters#matcher_default#use(['matcher_fuzzy'])

let g:unite_source_grep_default_opts = '-i -A 3 -B 3'
" Using ag as recursive command.
" let g:unite_source_rec_async_command =
" \ ['ag', '--follow', '--nocolor', '--nogroup',
" \  '--hidden', '-g', '']

let g:unite_source_history_yank_enable = 1
