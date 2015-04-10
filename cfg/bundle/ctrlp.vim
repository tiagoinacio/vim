set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,target/*,*/node_modules/*,*/.git/*,blender/*,baseChanges/*,.git/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
