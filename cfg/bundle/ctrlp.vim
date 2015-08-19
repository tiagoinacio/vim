noremap <leader>cp :CtrlPCurWD<CR>
noremap <leader>bo :CtrlPBookmarkDir<CR>
noremap <leader><TAB> :CtrlP<CR>
noremap <leader>ta :CtrlPTag<CR>
noremap <leader>tb :CtrlPBufTagAll<CR>
noremap <leader>tc :CtrlPBufTag<CR>
noremap <leader>cb :CtrlPBuffer<CR>
noremap <leader>ct :CtrlPSmartTabs<CR>

set runtimepath^=~/.vim/plugged/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*,*/node_modules/*,.git/*,*/.git/*,blender/*,baseChanges/*,git/,git
let g:ctrlp_by_filename = 1 " Ctrl D
let g:ctrlp_match_window = 'results:100' " overcome limit imposed by max height
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
