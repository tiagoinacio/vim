let jshint2_read = 1
let jshint2_save = 1
let jshint2_height = 3
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 2
let g:syntastic_javascript_checkers = ['jshint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=0

"highlight SpellBad ctermbg=NONE
"highlight SpellBad ctermfg=NONE
"highlight SpellBad ctermfg=NONE
"highlight SpellBad ctermbg=NONE
"highlight SpellBad cterm=underline

