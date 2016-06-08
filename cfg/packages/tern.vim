nnoremap <leader>td :TernDef<cr>
let tern#is_show_argument_hints_enabled = 1
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Use deoplete.
let g:tern_request_timeout = 1

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
