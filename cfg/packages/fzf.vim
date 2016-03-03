nnoremap <silent> <Leader>fp :call Favorites()<cr>
nnoremap <silent> <Leader>fo :call FavoritesAllFiles()<cr>
nnoremap <leader><TAB> :GitFiles<cr>
nnoremap <BS> :FZF<cr>
nnoremap <leader>ls :Buffers<cr>
nnoremap <leader>ma :Marks<cr>
nnoremap <leader>hi :History:<cr>
nnoremap <leader>mru :History<cr>
nnoremap <leader>ta :Tags<cr>

set rtp+=/usr/local/opt/fzf

function! s:ChooseFavoriteAllFiles(path)
    echo a:path
    exec "cd ".a:path
    Files
    call feedkeys('i', 'n')
endfunction

function! s:ChooseFavorite(path)
    echo a:path
    exec "cd ".a:path
    GitFiles
    call feedkeys('i', 'n')
endfunction

function! FavoritesAllFiles()
    call fzf#run({
        \   'source': 'cat $HOME/.fzf_favorites',
        \   'sink': function('s:ChooseFavoriteAllFiles')
        \ })
endfunction

function! Favorites()
    call fzf#run({
        \   'source': 'cat $HOME/.fzf_favorites',
        \   'sink': function('s:ChooseFavorite')
        \ })
endfunction

