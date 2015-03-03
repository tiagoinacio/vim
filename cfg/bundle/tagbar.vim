" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
"let g:tagbar_left = 1
let g:tagbar_compact = 1
let g:tagbar_width = 28
"autocmd VimEnter * nested :TagbarOpen

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <leader>ta :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
"
