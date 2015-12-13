nnoremap <silent> <Leader>fp :call Favorites()<cr>
nnoremap <leader><TAB> :GitFiles<cr>
nnoremap <leader>ls :Buffers<cr>
nnoremap <BS> :Tags<cr>
nnoremap <leader>ma :Marks<cr>

set rtp+=/usr/local/opt/fzf

function! s:ChooseFavorite(path)
    echo a:path
    exec "cd ".a:path
    GitFiles
    call feedkeys('i', 'n')
endfunction

function! Favorites()
    call fzf#run({
        \   'source': 'cat $HOME/.fzf_favorites',
        \   'sink': function('s:ChooseFavorite')
        \ })
endfunction

