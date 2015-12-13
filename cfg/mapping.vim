"""""""""""""""
" NORMAL MODE "
"""""""""""""""
nmap <space> <leader>
nnoremap , :

" Source files
nnoremap <leader>re :source ~/.vimrc<cr>
nnoremap <leader>r. :source %<cr>

" Window Management
nnoremap <leader>on :only!<cr>
nnoremap <leader>bi :set scrollbind<cr>
nnoremap <leader>qa :qall!<cr>
nnoremap :W :w
nnoremap :Q :q
nnoremap <c-s> :w!<cr>
nnoremap <leader>bd :bd<cr>

" Change Directory
nnoremap <leader>cd :ProjectRootCD<cr>
nnoremap <leader>cl :lcd %:p:h<cr>
nnoremap <leader>ya :let @* = expand("%:p")<cr>

" Git
nnoremap <leader>di :diffthis<cr>
nnoremap <leader>dg :diffget<cr>

" Movement
nnoremap _ dd
nnoremap Y y$
nnoremap 0 ^
nnoremap ^ 0
nnoremap J 3j
nnoremap K 3k
nnoremap L 4l
nnoremap H 4h

" Buffers
nnoremap + :bn<cr>
nnoremap - :bp<cr>

" Tags
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
nnoremap <leader>tw :tag <C-R><C-W><cr>

" Location List
nnoremap <leader><right> :lnext<cr>
nnoremap <leader><left> :lprevious<cr>
nnoremap <leader><up> :lopen<cr>
nnoremap <leader><down> :lclose<cr>

" Error List
nnoremap <right> :cnext<cr>
nnoremap <left> :cprevious<cr>
nnoremap <up> :copen<cr>
nnoremap <down> :cclose<cr>

"""""""""""""""""""""
" COMMAND-LINE MODE "
"""""""""""""""""""""
cnoremap <C-a> <Home>

"""""""""""""""
" VISUAL MODE "
"""""""""""""""
vnoremap y y`]
vnoremap J 3j
vnoremap K 3k
vnoremap <cr> <Esc>
vnoremap <BS> x
vnoremap < <gv
vnoremap > >gv

"""""""""""""""
" INSERT MODE "
"""""""""""""""
inoremap <Tab> <C-R>=Tab_Or_Complete()<cr>
inoremap jk <Esc>
inoremap <esc> <nop>
