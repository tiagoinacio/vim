let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" Gif config
map  s <Plug>(easymotion-sn)
omap s <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  m <Plug>(easymotion-next)
map  M <Plug>(easymotion-prev)


