" normal mode
nmap <space> <leader>
nmap <leader>on :only!<CR>
nmap <leader>di :%s/\%x40name/@method/gi<CR>
nmap <leader>du :%s/\%x40name/@method/gi<CR>
vmap <silent> s <Esc>:/\%V
nmap <leader>ya :let @* = expand("%:p")<CR>
nmap <leader>7 :s/^/\/\//g<CR>
nmap <leader>6 :s/\/\//g<CR>
"nmap <leader>bi :set scrollbind<CR> <C-W>l :set scrollbind<CR>
nmap <leader>bi :set scrollbind<CR>
nmap <leader>qa :qall!<CR>
nmap <leader>sa :w!<CR>
nmap <leader>cd :ProjectRootCD<CR>
nmap <leader>cl :lcd %:p:h<CR>
nnoremap <leader>sh :terminal<CR>
vmap ´ <Esc>:/\%V
nmap <S-BS> db
nnoremap <leader>di :diffthis<CR>
nnoremap <leader>dg :diffget<CR>

" clipboard yank
set clipboard=unnamed

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

noremap 0 ^
noremap ^ 0

" Visual
vnoremap s /\v
vmap 7 :s/^/\/\//g<CR>
vmap 6 :s/\/\///g<CR>
vmap y y`]
nnoremap , :
nmap :W :w
nnoremap <silent> >> :call ShiftLine()<CR>|               "And no shift magic on comments
map :Q :q
cmap § /
nmap <leader>tn :tnext<CR>
nmap <leader>tp :tprev<CR>
nmap <leader>tab :tabnew<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nnoremap _ dd
nnoremap J 3j
vmap J 3j
vmap K 3k
nnoremap K 3k
nnoremap L 4l
nnoremap H 4h
nnoremap + :bn<CR>
nnoremap - :bp<CR>

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

map <leader>tt <c-]>

" visual mode
imap jj <Esc>
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
vmap ; :B<SPACE>

noremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
noremap <leader>ln :lnext<CR>
noremap <leader>vs :vsplit<CR>
noremap <leader>hs :split<CR>
nnoremap <leader>v- :vertical resize -10<cr>
noremap <leader>v+ :vertical resize +10<cr>
noremap <leader>-- :vertical resize -20<cr> "resize current buffer by +/- 5
noremap <leader>++ :vertical resize +20<cr>
noremap <leader>h+ :resize +10<cr>
noremap <leader>h- :resize -10<cr>
imap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Disable arrow keys
nmap <left> <nop>
nmap <right> <nop>
vmap <up> x k p

nmap n :cnext<CR>
nmap N :cprevious<CR>
nmap <leader>re :source ~/.vimrc<CR>
map <C-RightMouse> :tag <C-R><C-W><CR>
map <leader>tw :tag <C-R><C-W><CR>
