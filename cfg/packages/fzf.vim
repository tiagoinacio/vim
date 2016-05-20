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
