"""""""""""
"" THEME ""
"""""""""""
set t_Co=256
let base16colorspace=256
set guifont=Hack:h13
set background=dark
" colorscheme base16-default
colorscheme default
hi Visual ctermbg=white
" set number

""""""""""""""""
"" HIGHLIGHTS ""
""""""""""""""""
" hi Normal ctermbg=231
hi CursorColumn ctermbg=00 cterm=NONE ctermfg=NONE guibg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi CursorLine cterm=NONE guibg=00 ctermbg=00

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

""""""""""""
"" OPTIONS "
""""""""""""
set noshowmode
set noruler
set laststatus=0
set noshowcmd

