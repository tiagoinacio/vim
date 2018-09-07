if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
let g:ack_qhandler = "botright copen 30"
let g:ackhighlight = 1
let g:ackpreview = 1
let g:ack_use_dispatch = 1
let g:ack_use_cword_for_empty_search = 0
nnoremap <leader>ff :Ack
