set rtp+=/usr/local/opt/fzf

function! s:choose_favorite(path)
    echo a:path
    exec "cd ".a:path
    GitFiles
    call feedkeys('i', 'n')
endfunction

function! Favorites()
    call fzf#run({
        \   'source': 'cat $HOME/.cdg_paths',
        \   'sink': function('s:my_func')
        \ })
endfunction

nnoremap <silent> <Leader>fp :call Favorites()<cr>
noremap <leader><TAB> :GitFiles<cr>
noremap <leader>ls :Buffers<cr>
noremap <BS> :Tags<cr>
