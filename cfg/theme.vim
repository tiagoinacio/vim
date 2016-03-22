"""""""""""
"" THEME ""
"""""""""""
set t_Co=256
let base16colorspace=256
set guifont=Hack:h13
set background=dark
" colorscheme base16-default
set number

if has('gui_running')
    colorscheme codeschool
endif

""""""""""""""""
"" HIGHLIGHTS ""
""""""""""""""""
" hi Normal ctermbg=231
hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi CursorLine cterm=NONE guibg=NONE

" for base16
" highlight CursorLine   ctermbg=236
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight GitGutterAdd ctermbg=none
" highlight GitGutterChange ctermbg=none
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1
" highlight GitGutterDelete ctermbg=none

""""""""""""
"" CURSOR ""
""""""""""""
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

"" ODD
" hi EvenLbg ctermbg=234
