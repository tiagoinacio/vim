" normal mode
nmap <space> <leader>
nmap S :s///g<LEFT><LEFT><LEFT>
nmap <leader>di :%s/\%x40name/@method/gi<CR>
nmap <leader>du :%s/\%x40name/@method/gi<CR>
nnoremap s /\v
nmap <leader>7 :s/^/\/\//g<CR>
nmap <leader>6 :s/\/\//g<CR>
"nmap <leader>bi :set scrollbind<CR> <C-W>l :set scrollbind<CR>
nmap <leader>bi :set scrollbind<CR>
nmap <leader>qa :qall!<CR>
nmap <leader>sa :w!<CR>
nmap <leader>cd :ProjectRootCD<CR>
nnoremap <leader>sh :terminal<CR>
nnoremap ´ /

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
nnoremap _ dd
nnoremap J 3j
nnoremap K 3k
nnoremap L :bn<CR>
nnoremap H :bp<CR>
nnoremap + :bn<CR>
nnoremap - :bp<CR>


" visual mode
imap jj <Esc>
imap kk <Esc>:
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
vmap ; :B<SPACE>

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

nmap <up> :exec 'normal ddkkp'<CR>
nmap <down> :exec 'normal ddp'<CR>
nmap <left> <nop>
nmap <right> <nop>
vmap <up> x k p

