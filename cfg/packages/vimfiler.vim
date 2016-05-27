autocmd FileType vimfiler nmap <buffer> i :VimFilerPrompt<CR>
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

nnoremap <tab> :VimFilerExplorer .<cr>
nnoremap <s-tab> :VimFilerPrompt<cr>
