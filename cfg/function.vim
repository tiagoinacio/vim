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

function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction

function! Filename()
    echo expand('%:p')
endfunction

function! Favorites(...)
    :e ~/.fzf_favorites
    if a:0 > 0
        :execute "normal /" . a:1 . "\<cr>"
    endif
endfunction

augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

augroup all_autocmds
    autocmd!
    autocmd FilterWritePre * if &diff | setlocal wrap< | endif " wrap lines with diff
    autocmd BufEnter * :call <SID>AutoProjectRootCD()
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufReadPost quickfix nnoremap <buffer> <cr> <cr>
    autocmd BufReadPost locationlist nnoremap <buffer> <cr> <cr>
    autocmd CmdwinEnter * nnoremap <buffer> <cr> <cr>
    autocmd FileType cpp match OverLength /\%81v.\+/
    command! Filename execute ":call Filename()"
    command! -nargs=? Favorites call Favorites(<f-args>)
augroup END
