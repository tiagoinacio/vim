"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"let NERDTreeChDirMode=2
au BufRead,BufNewFile *.json setf json
let g:NERDTreeWinPos = "right"
let g:NERDTreeMapOpenInTabSilent = '<2-LeftMouse>'
"set autochdir
"autocmd BufEnter * lcd %:p:h " auto-change directory to current buffer
nnoremap <silent> <leader>dt :ProjectRootExe NERDTreeFind<cr>

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
