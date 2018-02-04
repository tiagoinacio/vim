let g:vimfiler_safe_mode_by_default = 0

autocmd FileType vimfiler nmap <buffer> i :VimFilerPrompt<CR>

nnoremap <C-e> :VimFilerBufferDir -explorer<cr>
