noremap <leader>cp :CtrlPCurWD<CR>
noremap <leader>cc :CtrlPChangeAll<CR>
noremap <leader>cu :CtrlPUndo<CR>
noremap <leader>ta :CtrlPTag<CR>
noremap <leader>cq :CtrlPQuickfix<CR>
noremap <leader>tb :CtrlPBufTagAll<CR>
noremap <leader>tc :CtrlPBufTag<CR>
noremap <leader>ct :CtrlPSmartTabs<CR>

set runtimepath^=~/.vim/plugged/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,vendor/**.zip,*/target/*,*/node_modules/*,.git/*,*/.git/*,blender/*,baseChanges/*,git/,git
let g:ctrlp_by_filename = 1 " Ctrl D
let g:ctrlp_match_window = 'results:25' " overcome limit imposed by max height
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore coverage
      \ --ignore temp
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|vendor|baseChanges|blender|node_modules|target)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
