 command! -nargs=* -complete=file AG Grepper -tool git -query <args>

" Mimic :grep and make ag the default tool.
let g:grepper = {
    \ 'tools': ['grep'],
    \ 'open':  1,
    \ 'jump':  0,
    \ }
