noremap <leader>si :call ToggleErrors()<CR>

let g:syntastic_aggregate_errors = 1
let jshint2_read = 1
let jshint2_save = 1
let jshint2_height = 3
let g:syntastic_loc_list_height = 3
let g:syntastic_auto_loc_list = 2
let g:syntastic_javascript_checkers = ['jscs', 'jshint']

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=0

"highlight SpellBad ctermbg=NONE
"highlight SpellBad ctermfg=NONE
"highlight SpellBad ctermfg=NONE
"highlight SpellBad ctermbg=NONE
"highlight SpellBad cterm=underline

function! <SID>LocationPrevious()
  try
    lprev
  catch /^Vim\%((\a\+)\)\=:E553/
    llast
  endtry
endfunction

function! <SID>LocationNext()
  try
    lnext
  catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
  endtry
endfunction

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
