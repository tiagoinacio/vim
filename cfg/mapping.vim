" normal mode
nmap <space> <leader>
nmap S :s///g<LEFT><LEFT><LEFT>
nnoremap s /\v
nmap <leader>7 :s/^/\/\//g<CR>
nmap <leader>6 :s/\/\/g<CR>
"nmap <leader>bi :set scrollbind<CR> <C-W>l :set scrollbind<CR>
nmap <leader>bi :set scrollbind<CR>

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
nmap <leader>tn :tabnew<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap - dd
nmap _ ddO
nnoremap J 2j
nnoremap K 2k
nnoremap L :bn<CR>
nnoremap H :bp<CR>


" visual mode
imap jj <Esc>
imap kk <Esc>:
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
vmap ; :B<SPACE>

noremap <leader>sh :term<CR>

noremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
noremap <leader>ls :ls<CR>
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

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
