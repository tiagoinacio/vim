"""""""""""
"" THEME ""
"""""""""""
set t_Co=256
" let base16colorspace=256
set guifont=Hack:h13
set background=light
" colorscheme base16-default
" colorscheme emacs
" colorscheme default
" colorscheme mustang
" hi Visual ctermbg=white
" set number

""""""""""""""""
"" HIGHLIGHTS ""
""""""""""""""""
" hi Normal ctermbg=231
 hi CursorColumn ctermbg=00 cterm=NONE ctermfg=NONE guibg=NONE
 hi SignColumn guibg=NONE ctermbg=NONE
 hi CursorLine cterm=NONE guibg=NONE ctermbg=NONE

" for base16
" highlight CursorLine   ctermbg=236
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight GitGutterAdd ctermbg=none
" highlight GitGutterChange ctermbg=none
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
highlight LineNr ctermbg=00 ctermfg=255
highlight CursorLineNr ctermbg=00 ctermfg=55
highlight NonText ctermfg=253
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
set laststatus=2
set noshowcmd

if !has('nvim')
    set term=screen-256color
    set bg=dark
else
    " colorscheme emacs
    colorscheme default
endif

hi StatusLine ctermbg=white ctermfg=black guibg=black guifg=white
hi CursorColumn guibg=white
hi CursorLine guibg=white
