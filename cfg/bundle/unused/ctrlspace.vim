nmap <leader>ss :CtrlSpace<CR>
noremap <leader>sb :CtrlSpace<CR>
noremap <leader>st :CtrlSpace l<CR>
noremap <leader>sn :CtrlSpaceTabLabel<CR>

let g:ctrlspace_use_tabline = 1
if executable("ag")
    let g:ctrlspace_glob_command = 'ag -l --nocolor -g ""'
endif
