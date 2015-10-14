so ~/.vim/autoload/plug.vim

for f in split(glob('~/.vim/cfg/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('~/.vim/cfg/packages/*.vim'), '\n')
    exe 'source' f
endfor

"if exists("g:loaded_webdevicons")
"    call webdevicons#refresh()
"endif

hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi CursorLine cterm=NONE ctermbg=NONE
hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi FoldColumn guibg=white ctermbg=white
