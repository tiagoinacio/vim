"""""""""""
"" THEME ""
"""""""""""
set t_Co=256
let base16colorspace=256
set guifont=Hack:h13
set background=dark
colorscheme tango
if has('gui_running')
    colorscheme codeschool
endif

""""""""""""""""
"" HIGHLIGHTS ""
""""""""""""""""
" hi Normal ctermbg=231
hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi CursorColumn ctermbg=NONE guibg=NONE
hi CursorLine cterm=NONE

""""""""""""
"" CURSOR ""
""""""""""""
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"" ODD
" hi EvenLbg ctermbg=234
