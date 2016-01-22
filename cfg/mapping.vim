"""""""""""""""
" NORMAL MODE "
"""""""""""""""
nmap <space> <leader>
nnoremap , :

" Source files
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>sb :source %<cr>

" Window Management
nnoremap <leader>wo :only!<cr>
nnoremap <leader>ws :w!<cr>
nnoremap <leader>wq :qall!<cr>
nnoremap <leader>sb :set scrollbind<cr>
nnoremap :Q :q
nnoremap <c-s> :w!<cr>

" Change Directory
nnoremap <leader>cd :ProjectRootCD<cr>
nnoremap <leader>cl :lcd %:p:h<cr>
nnoremap <leader>ya :let @* = expand("%:p")<cr>

" Git
nnoremap <leader>di :diffthis<cr>
nnoremap <leader>dg :diffget<cr>

" Movement
nnoremap <silent> _ dd
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
nnoremap <leader>bd :bd<cr>

" Tags
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
nnoremap <leader>tw :tag <C-R><C-W><cr>

"""""""""""""""""
" LOCATION LIST "
"""""""""""""""""
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lp :lprevious<cr>
nnoremap <leader>lo :call LocationListToggle()<cr>

"""""""""""""""""
" QUICKFIX LIST "
"""""""""""""""""
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qp :cprevious<cr>
nnoremap <leader>qo :call QuickfixToggle()<cr>

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
vnoremap <BS> x
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>js :<',>'!python -m json.tool<cr>

"""""""""""""""
" INSERT MODE "
"""""""""""""""
inoremap <Tab> <C-R>=Tab_Or_Complete()<cr>
inoremap jk <Esc>
inoremap <esc> <nop>

"""""""""""""""""
" OPERATOR MODE "
"""""""""""""""""
onoremap p i(
onoremap q i"
onoremap t i'
onoremap b i{
onoremap il( :<c-u>normal! f(vi(<cr>
onoremap il" :<c-u>normal! f"vi"<cr>
onoremap il' :<c-u>normal! f'vi'<cr>
onoremap il{ :<c-u>normal! f{vi{<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
onoremap ih" :<c-u>normal! F"vi"<cr>
onoremap ih' :<c-u>normal! F'vi'<cr>
onoremap ih{ :<c-u>normal! F{vi{<cr>
