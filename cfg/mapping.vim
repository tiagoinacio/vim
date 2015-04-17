" normal mode
nmap <space> <leader>
nmap S :s///g<LEFT><LEFT><LEFT>
nmap <leader>7 :s/^/\/\//g<CR>
nmap <leader>6 :s/\/\/g<CR>
vmap 7 :s/^/\/\//g<CR>
vmap 6 :s/\/\///g<CR>
nnoremap , :
nmap :W :w
nnoremap <silent> >> :call ShiftLine()<CR>|               "And no shift magic on comments
map :Q :q
nmap <TAB> :GitGutterNextHunk<CR>
nmap <S-TAB> :GitGutterPrevHunk<CR>
nmap <leader>tn :tabnew<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>b1 :b1
nmap <leader>b2 :b2
nmap <leader>b3 :b3
nmap <leader>b4 :b4
nmap <leader>b5 :b5
nmap <leader>b6 :b6
nmap <leader>b7 :b7
nmap <leader>b8 :b8
nmap <leader>b9 :b9
nmap - dd
nmap _ ddO
nnoremap J 2j
nnoremap K 2k
nnoremap L :bn<CR>
nnoremap H :bp<CR>

" plugins

nmap <leader>ss :CtrlSpace<CR>

" visual mode
imap jj <Esc>
imap kk <Esc>:
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
vmap ; :B<SPACE>
imap ¯ <Esc>ja
imap „ <Esc>ka
imap ˇ <Esc>ha
imap ‘ <Esc>la

noremap <leader>sh :shell<CR>

nnoremap <leader>yr :YRShow<CR>
noremap <leader>cp :CtrlPCurWD<CR>
noremap <leader>bo :CtrlPBookmarkDir<CR>
noremap <leader><TAB> :CtrlP<CR>
noremap <leader>ta :CtrlPTag<CR>
noremap <leader>tb :CtrlPBufTagAll<CR>
noremap <leader>tc :CtrlPBufTag<CR>
noremap <leader>cb :CtrlPBuffer<CR>
noremap <leader>ct :CtrlPSmartTabs<CR>
noremap <leader>sb :CtrlSpace<CR>
noremap <leader>st :CtrlSpace l<CR>
noremap <leader>sn :CtrlSpaceTabLabel<CR>
noremap <leader>do :JsDoc<CR>
noremap <leader>ne :NERDTreeToggle<CR>
noremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
noremap <leader>ls :ls<CR>
noremap <leader>ln :lnext<CR>
noremap <leader>re :TernRename<CR>
noremap <leader>si :SyntasticInfo<CR>
noremap <leader>sy :SyntasticCheck jslint<CR>
noremap <leader>td :TernDef<CR>
noremap <leader>tt :TernType<CR>
noremap <leader>tr :TernRefs<CR>
noremap <leader>vs :vsplit<CR>
noremap <leader>hs :split<CR>
nnoremap <leader>v- :vertical resize -10<cr>
noremap <leader>v+ :vertical resize +10<cr>
noremap <leader>-- :vertical resize -20<cr> "resize current buffer by +/- 5
noremap <leader>++ :vertical resize +20<cr>
noremap <leader>h+ :resize +10<cr>
noremap <leader>h- :resize -10<cr>
noremap <leader>gp :GitGutterPreviewHunk<cr>
noremap <leader>gs :GitGutterStageHunk<cr>
noremap <leader>gr :GitGutterRevertHunk<cr>
imap <Tab> <C-R>=Tab_Or_Complete()<CR>
nmap <leader>w <Plug>(easymotion-w)
nmap <leader>b <Plug>(easymotion-b)

" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

" Disable arrow keys

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
