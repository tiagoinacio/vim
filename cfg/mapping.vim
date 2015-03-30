nmap S :s///g<LEFT><LEFT><LEFT>
nnoremap <silent> >> :call ShiftLine()<CR>|               "And no shift magic on comments
nmap <space> <leader>
map , :
nmap W w

imap ,, <Esc>
imap kk <Esc>:
map :Q :q
nmap <TAB> :
nmap <leader>tn :tabnew<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>gt gt
nmap <leader>gT gT
nmap <leader>b1 b2
nmap <leader>b2 b2
nmap <leader>b3 b3
nmap <leader>b4 b4
nmap <leader>b5 b5
nmap <leader>b6 b6
nmap <leader>b7 b7
nmap <leader>b8 b8
nmap <leader>b9 b9

nmap <leader>ss :CtrlSpace<CR>
vmap ; :B<SPACE>
" Make BS/DEL work as expected in visual modes (i.e. delete the selected text)...
vmap <BS> x
map - dd
map _ ddO<Esc>0
nnoremap J 1j<CR>
nnoremap K 3k<CR>
nnoremap H gT
nnoremap L gt

imap ¯ <Esc>ja
imap „ <Esc>ka
imap ˇ <Esc>ha
imap ‘ <Esc>la

map <leader>gf <C-]><CR>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
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
noremap <leader>ne :NERDTreeTabsToggle<CR>
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
