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

function! AutoUpdateCTags()
    if filewritable("tags")==1
        if &ch>1
            echo "Updating tags..."
        endif
        let filename = expand('%')
        let filename = substitute(filename, '^./',     '', '')
        silent exec '!ctags -a ' . shellescape(filename) . ' 2> >(grep -v "^ctags: Warning: ignoring null tag")'
    endif
endfunction
augroup AutoUpdateCTags
    autocmd!
    autocmd BufWritePost,FileWritePost *.* call AutoUpdateCTags()
augroup END

autocmd BufEnter * call <SID>AutoProjectRootCD()
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufDelete * if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1 | quit | endif



