" normal mode
nmap <space> <leader>
nmap <leader>on :only!<cr>
nmap <leader>ya :let @* = expand("%:p")<cr>
nmap <leader>bi :set scrollbind<cr>
nmap <leader>qa :qall!<cr>
nmap <leader>sa :w!<cr>
nmap <leader>cd :ProjectRootCD<cr>
nmap <leader>cl :lcd %:p:h<cr>
nnoremap <leader>sh :terminal<cr>
nmap <S-BS> db
nnoremap <leader>di :diffthis<cr>
nnoremap <leader>dg :diffget<cr>

" clipboard yank
set clipboard=unnamed

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

noremap 0 ^
noremap ^ 0

" Visual
" vnoremap s /\v
vnoremap <silent> s <Esc>:/\%V
vmap y y`]
nnoremap , :
nmap :W :w
map :Q :q
nmap <leader>tn :tnext<cr>
nmap <leader>tp :tprev<cr>
nmap <leader>tab :tabnew<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bn :bn<cr>
nnoremap _ dd
nnoremap J 3j
vmap J 3j
vmap K 3k
nnoremap K 3k
nnoremap L 4l
nnoremap H 4h
nnoremap + :bn<cr>
nnoremap - :bp<cr>

map <leader>tt <c-]>

" visual mode
imap jj <Esc>

" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x

noremap <leader>ln :lnext<cr>
noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>
nnoremap <leader>v- :vertical resize -10<cr>
noremap <leader>v+ :vertical resize +10<cr>
noremap <leader>-- :vertical resize -20<cr> "resize current buffer by +/- 5
noremap <leader>++ :vertical resize +20<cr>
noremap <leader>h+ :resize +10<cr>
noremap <leader>h- :resize -10<cr>
imap <Tab> <C-R>=Tab_Or_Complete()<cr>

" Disable arrow keys
nmap <right>n :cnext<cr>
nmap <left>N :cprevious<cr>

nmap <leader>re :source ~/.vimrc<cr>
nmap <leader>r. :source %<cr>
map <C-RightMouse> :tag <C-R><C-W><cr>
map <leader>tw :tag <C-R><C-W><cr>

vmap < <gv
vmap > >gv

vmap <cr> <Esc>
nnoremap <leader>ll :lopen<cr>
