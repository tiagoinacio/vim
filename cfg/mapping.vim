"""""""""""""""
" NORMAL MODE "
"""""""""""""""
nmap <space> <leader>
nnoremap , :
set wildcharm=<Tab>

"""""""""""""""""""""""""
" PREFIXES              "
"""""""""""""""""""""""""
" b -> buffer           "
" c -> change directory "
" d -> diff             "
" d -> dispatch         "
" f -> find             "
" g -> git gutter       "
" l -> location list    "
" n -> nerdtree         "
" q -> quickfix         "
" p -> plugin
" s -> source files     "
" t -> tags             "
" w -> window           "
"""""""""""""""""""""""""

" Source files
nnoremap <leader>sv :source ~/.vimrc<cr>
nmap <leader>s. :source %<cr>
nnoremap <leader>ee :e %:p:h<tab>

" Window Management
nnoremap <leader>wo :only!<cr>
nnoremap <leader>ws :w!<cr>
nnoremap <leader>wq :wq!<cr>
nnoremap <leader>wd :bd<cr>
nnoremap <leader>qa :qall!<cr>
nnoremap <leader>sb :set scrollbind<cr>
nnoremap :Q :q

nnoremap § :vertical resize +5<cr>
nnoremap ± :vertical resize -5<cr>

" Change Directory
nnoremap <leader>cr :ProjectRootCD<cr>
nnoremap <leader>cl :lcd %:p:h<cr>
nnoremap <leader>ya :let @* = expand("%:p")<cr>

" Git

" Movement
nnoremap <silent> _ dd
nnoremap Y y$
nnoremap 0 ^
nnoremap ^ 0
nnoremap J 5j
nnoremap K 5k
nnoremap L 4l
nnoremap H 4h

" Buffers
nnoremap + :bn<cr>
nnoremap - :bp<cr>
nnoremap <leader>bd :bp \| bd #<cr>

" Tags
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprev<cr>
nnoremap <leader>tw :tag <C-R><C-W><cr>

"""""""""""""""""
" LOCATION LIST "
"""""""""""""""""
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lp :lprevious<cr>
nnoremap <leader>lt :call LocationListToggle()<cr>
nnoremap <leader>lo :lopen<cr>
nnoremap <leader>lc :lclose<cr>

"""""""""""""""""
" QUICKFIX LIST "
"""""""""""""""""
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qp :cprevious<cr>
nnoremap <leader>qt :call QuickfixToggle()<cr>
nnoremap <leader>qo :copen<cr>
nnoremap <leader>qc :cclose<cr>

"""""""""""""""""""""
" COMMAND-LINE MODE "
"""""""""""""""""""""
cnoremap <C-a> <Home>
cnoremap w!! w !sudo tee % >/dev/null

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
inoremap JK <Esc>
inoremap <esc> <nop>

"""""""""""""""""
" OPERATOR MODE "
"""""""""""""""""
" onoremap il( :<c-u>normal! f(vi(<cr>
" onoremap il" :<c-u>normal! f"vi"<cr>
" onoremap il' :<c-u>normal! f'vi'<cr>
" onoremap il{ :<c-u>normal! f{vi{<cr>
" onoremap il( :<c-u>normal! F(vi(<cr>
" onoremap ih" :<c-u>normal! F"vi"<cr>
" onoremap ih' :<c-u>normal! F'vi'<cr>
" onoremap ih{ :<c-u>normal! F{vi{<cr>

"""""""""
" MOUSE "
"""""""""

""""""""
" TEXT "
""""""""
nnoremap <leader>ju gggqG_j

""""""""
" FIND "
""""""""
" nnoremap <bs> :Favorites<space>
" nnoremap <tab> :find<space>
" 
