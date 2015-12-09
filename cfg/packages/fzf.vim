set rtp+=/usr/local/opt/fzf

noremap <leader><TAB> :GitFiles<cr>
noremap <leader>ls :Buffers<cr>
noremap <BS> :Tags<cr>

function! Favorites()
    call fzf#run({
        \   'source': 'cat $HOME/.cdg_paths',
        \   'sink': 'cd'
        \ })
endfunction

nnoremap <silent> <Leader>fp :call Favorites()<cr>

