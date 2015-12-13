nnoremap <leader>tg :TagbarToggle<cr>

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'js',
    \ 'kinds'     : [
        \ 'n:constant',
        \ 'o:object',
        \ 'c:class',
        \ 'f:function',
        \ 'm:method',
        \ 'a:arrays'
    \ ]
\ }
