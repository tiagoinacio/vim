set rtp+=/usr/local/opt/fzf

function! s:ChooseFavorite(path)
    echo a:path
    exec "cd ".a:path
    GitFiles
    call feedkeys('i', 'n')
endfunction

function! Favorites()
    call fzf#run({
        \   'source': 'cat $HOME/.cdg_paths',
        \   'sink': function('s:ChooseFavorite')
        \ })
endfunction

nnoremap <silent> <Leader>fp :call Favorites()<cr>
noremap <leader><TAB> :GitFiles<cr>
noremap <leader>ls :Buffers<cr>
noremap <BS> :Tags<cr>
