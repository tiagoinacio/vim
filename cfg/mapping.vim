let mapleader = ","
noremap <leader><left> :bp<CR>
noremap <leader><right> :bn<CR>
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
map <C-W> :bd<CR>
noremap <leader>cp :CtrlP<CR>
noremap <leader>cb :CtrlPBuffer<CR>
noremap <leader><TAB> :CtrlPBuffer<CR>
noremap <leader>do :JsDoc<CR>
noremap <leader>ne :NERDTreeToggle<CR>
noremap <leader>kk  <C-w>k<CR>
noremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
noremap <leader>gu :GundoToggle<CR>
noremap <leader>hh  <C-w>h<CR>
noremap <leader>jj  <C-w>j<CR>
noremap <leader>ls :ls<CR>
noremap <leader>ln :lnext<CR>
noremap <leader>ll  <C-w>l<CR>
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
noremap <Tab> <C-R>=Tab_Or_Complete()<CR>
nmap <leader>w <Plug>(easymotion-w)
nmap W <Plug>(easymotion-w)
cnoreabbrev wq w<bar>bd
map <Esc>^[^[[D :bp<CR>
map <Esc>^[^[[C :bn<CR>
" Disable arrow keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
