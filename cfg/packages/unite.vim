 " -quick-match -auto-preview
" noremap <leader>un :Unite -start-insert<cr>
 nnoremap <c-g> :execute 'Unite grep'<cr><bs><C-r>=getcwd()<cr>
 " nnoremap <leader>ne :VimFilerExplorer<cr>
 " nnoremap <c-f> :Unite file_rec/async<cr>
 " nnoremap <leader>ur :Unite register<cr>
 " nnoremap <leader>uu :Unite directory_rec/async -start-insert<cr>
 " " Quickly switch lcd
 " nnoremap <silent> <leader>mru
 "       \ :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>
 "
 call unite#filters#matcher_default#use(['matcher_fuzzy'])
 "
 let g:unite_bookmark_file = '~/.fzf_favorites'
 "
 " let g:unite_source_grep_default_opts = '-i -A 3 -B 3'
 " Using ag as recursive command.
 " let g:unite_source_rec_async_command =
 " \ ['ag', '--follow', '--nocolor', '--nogroup', '--hidden',  'a', '-g', '']
 "
 " let g:unite_source_rec_async_command=['ag', '--nocolor', '--nogroup', ' --ignore ', '".hg"', ' --ignore , ".svn" --ignore ".git" --ignore ".bzr" --hidden -g ""']
 "
 let g:unite_source_history_yank_enable = 1
 let g:unite_source_rec_min_cache_files = 1200

 " Default profile
 "   * toggle: Close unite buffer if already exists
 call unite#custom#profile('default', 'context', {
             \ 'start_insert'      : 1,
             \ 'force_redraw'      : 1,
             \ 'no_empty'          : 1,
             \ 'toggle'            : 1,
             \ 'vertical_preview'  : 1,
             \ 'winheight'         : 80,
             \ 'prompt'            : '▸ ',
             \ 'prompt_focus'      : 1,
             \ 'candidate_icon'    : '  ▫ ',
             \ 'marked_icon'       : '  ▪ ',
             \ 'no_hide_icon'      : 1
         \ })
 " Grep unite source.
 call unite#custom#profile('source/grep', 'context', {
             \ 'no_start_insert'  : 1,
             \ 'empty'            : 1,
             \ 'no_resize'        : 1,
             \ 'auto_preview'     : 0
         \ })

 " let g:unite_source_grep_command = 'grep'
 " let g:unite_source_grep_default_opts =
 "             \ '-iR -C 5 --exclude-dir ' .
 "             \ '''.git'' --exclude-dir ''.DS_Store'' --exclude-dir ''.node_modules'' --exclude-dir ''target'' --exclude-dir ''blender'' --exclude-dir ''vendor'''
 "
 let g:unite_source_grep_recursive_opt = ''

 let g:unite_source_rec_async_command =
             \ ['ag', '-i', '--nocolor', '--nogroup', '--ignore',
             \ '.git', '--ignore', '".DS_Store"', '--ignore', '".node_modules"',
             \ '--ignore', '"blender"', '--ignore', '"target"',
             \ '--hidden', '-g', '']
 let g:unite_source_grep_default_opts =
             \ '-i -U --column --nocolor --nogroup --ignore ''target'' --ignore ''blender'' --ignore ' .
             \ '''.git'' --ignore ''.DS_Store'' --ignore ''.node_modules'''
 let g:unite_source_grep_command = 'ag'

 call unite#custom#source('grep', 'matchers', 'matcher_fuzzy')

