" ----- xolox/vim-easytags settings -----
" Where to look for tags files
" Sensible defaults
"let g:tagbar_left = 1
let g:tagbar_compact = 1
"autocmd VimEnter * nested :TagbarOpen

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <leader>tg :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
"
