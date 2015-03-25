let mapleader = ","
nmap S :s///g<LEFT><LEFT><LEFT>
nnoremap <silent> >> :call ShiftLine()<CR>|               "And no shift magic on comments
nmap ; :
nmap W w

imap jj <Esc>
imap kk <Esc>:
nmap <TAB> :

vmap ; :B<SPACE>
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
map - dd
map _ ddO<Esc>0
nnoremap J 1j<CR>
nnoremap K 3k<CR>

imap ¯ <Esc>ja
imap „ <Esc>ka
imap ˇ <Esc>ha
imap ‘ <Esc>la

noremap <leader>tp tabp<CR>
noremap <leader>tn tabn<CR>

noremap <leader><left> :bp<CR>
noremap <leader><right> :bn<CR>
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
map <leader>gf <C-]><CR>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap <leader>cp :CtrlPCurWD<CR>
noremap <leader>bo :CtrlPBookmarkDir<CR>
noremap <leader><TAB> :CtrlP<CR>
noremap <leader>ba :CtrlPTag<CR>
noremap <leader>bb :CtrlPBufTagAll<CR>
noremap <leader>bc :CtrlPBufTag<CR>
noremap <leader>cb :CtrlPBuffer<CR>
noremap <leader>ct :CtrlPSmartTabs<CR>
noremap <leader>ss :CtrlSpace<CR>
noremap <leader>sn :CtrlSpaceTabLabel<CR>
noremap <leader>do :JsDoc<CR>
noremap <leader>ne :NERDTreeToggle<CR>
noremap <leader>kk  <C-w>k<CR>
noremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
noremap <leader>gu :GundoToggle<CR>
noremap <leader>hh  <C-w>h<CR>
noremap <leader>j  <C-w>j<CR>
noremap <leader>ls :ls<CR>
noremap <leader>ln :lnext<CR>
noremap <leader>l  <C-w>l<CR>
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
noremap <leader>gn :GitGutterNextHunk<cr>
noremap <leader>gp :GitGutterPrevHunk<cr>
imap <Tab> <C-R>=Tab_Or_Complete()<CR>
nmap <leader>w <Plug>(easymotion-w)
nmap Q <Plug>(easymotion-b)
nmap W <Plug>(easymotion-w)
map <Esc>^[^[[D :bp<CR>
map <Esc>^[^[[C :bn<CR>

" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l" Disable arrow keys

""map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
