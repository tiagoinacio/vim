nnoremap <silent> <Leader>fg :call ListFavorites('s:OpenGitFiles')<cr>
nnoremap <silent> <Leader>fa :call ListFavorites('s:OpenAllFiles')<cr>
nnoremap <silent> <Leader>fp :call ListFavorites('s:ChangeDirectory')<cr>
nnoremap <silent> <Leader>cd :call ListDirectories()<cr>
nnoremap <leader><TAB> :GitFiles<cr>
nnoremap <BS> :call FindFilesInDirectory()<cr>
nnoremap <leader>ls :Buffers<cr>
nnoremap <C-i> :History<cr>
nnoremap <C-t> :Tags<cr>

imap <c-x><c-l> <plug>(fzf-complete-line)

" let g:fzf_launcher = "~/.home/bin/fzf.sh %s"
set rtp+=/usr/local/opt/fzf
" autocmd VimEnter * command! -nargs=+ -complete=file Ag call fzf#vim#ag_raw(<q-args>)

function! FindFilesInDirectory()
    let s:path = expand('%:p:h')
    exec "Files ".s:path
endfunction

function! s:ChangeDirectory(path)
    exec "cd ".a:path
endfunction

function! s:OpenAllFiles(path)
    exec "cd ".a:path
    exec "Files ".a:path
    call feedkeys('i', 'n')
endfunction

function! s:OpenGitFiles(path)
    exec "cd ".a:path
    GitFiles
    call feedkeys('i', 'n')
endfunction

function! ListFavorites(path)
call fzf#run({
    \   'source': 'cat $HOME/.fzf_favorites',
    \   'sink': function(a:path)
    \ })
endfunction

command! FzfGulp call fzf#run({
\ 'source': split(gulpVim#GetTasks()),
\ 'sink': 'GulpExt'
\ })

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options =
\ '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'



"Find A Directory
function! FZFDirectory(directory)
  let directory = expand(a:directory)
  let command = 'tree -i -f -d "'.directory.'"'
  call fzf#run({
  \ 'source': command,
  \ 'sink': 'Unite directory',
  \ 'options': ''
  \ })
endfunction
command! -nargs=+ -complete=dir FZFDirectory call FZFDirectory('<args>')

"Grepping Using FZF #TODO File With :File: Name
 function! s:escape(path)
  return substitute(a:path, ' ', '\\ ', 'g')
 endfunction
 "TODO Extend To Other Handlers
 function! AgHandler(line)
  let parts = split(a:line, ':')
  let [fn, lno] = parts[0 : 1]
  execute 'e '. s:escape(fn)
  execute lno
  normal! zz
 endfunction
function! FZFGrep(pattern, ...)
let filter = a:0 > 0 ? a:1 : '*'
let command = 'ag -i "'.a:pattern.'" '.filter
call fzf#run({
  \ 'source': command,
  \ 'sink': function('AgHandler'),
  \ 'options': '+m'
  \ })
endfunction
command! -nargs=* FZFGrep call FZFGrep(<f-args>)
