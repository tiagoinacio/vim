function! ToggleNumber() " toggle between number and relativenumber
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction

function! <SID>AutoProjectRootCD()
    try
        if &ft != 'help'
            ProjectRootCD
        endif
    catch
        " Silently ignore invalid buffers
    endtry
endfunction

"function! AutoUpdateCTags()
"    if filewritable("tags")==1
"        if &ch>1
"            echo "Updating tags..."
"        endif
"        let filename = expand('%')
"        let filename = substitute(filename, '^./',     '', '')
"        silent exec '!ctags -a ' . shellescape(filename) . ' 2> >(grep -v "^ctags: Warning: ignoring null tag")'
"    endif
"endfunction

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

highlight ColorColumn ctermbg=grey

function! Start()
endfunction

function! MarkMargin (on)
    if exists('b:MarkMargin')
        try
            call matchdelete(b:MarkMargin)
        catch /./
        endtry
        unlet b:MarkMargin
    endif
    if a:on
        let b:MarkMargin = matchadd('ColorColumn', '\%121v', 100)
    endif
endfunction

augroup MarkMargin
" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

augroup AutoUpdateCTags
    autocmd!
    autocmd  BufEnter  *       :call MarkMargin(1)
    autocmd  BufEnter  *.vp*   :call MarkMargin(0)
augroup END

"augroup AutoUpdateCTags
"    autocmd!
"    autocmd BufWritePost,FileWritePost *.* call AutoUpdateCTags()
"augroup END

autocmd BufEnter * call <SID>AutoProjectRootCD()
autocmd BufWritePre * :%s/\s\+$//e

autocmd InsertLeave * :set relativenumber
autocmd InsertEnter * :set relativenumber!
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
call Start()
