"function! Start()
"endfunction
"call Start()

function! LS()
    echo split(globpath('.', '**'), '\n')
endfunction

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

function! LocationListToggle()
    if g:location_list_is_open
        lclose
        let g:location_list_is_open = 0
        execute g:location_list_return_to_window . "wincmd w"
    else
        let g:location_list_return_to_window = winnr()
        lopen
        let g:location_list_is_open = 1
    endif
endfunction

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
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

function! UpdateFlavour()
    let g:bf_flavour_path = expand('%:p')
    if g:bf_flavour_path =~ 'flavour/'
        let g:bf_airline_path = 'flavour ⮁'
    elseif g:bf_flavour_path =~ 'base/'
        let g:bf_airline_path = 'base ⮁'
    elseif g:bf_flavour_path =~ 'bf-edw-static-client'
        let g:bf_airline_path = 'edw ⮁'
    elseif g:bf_flavour_path =~ 'bf-eds-static-client'
        let g:bf_airline_path = 'eds ⮁'
    else
        let g:bf_airline_path = ''
    endif
endfunction

function! CompareWithEDS()
    let l:flavourPath = expand("%:p")
    let l:basePath = substitute(l:flavourPath, "bf-edw-static-client-nj\\/flavour", "bf-eds-static-client", "")
    echom l:basePath
    exec 'vsplit ' . l:basePath
endfunction

function! AutoComplete()
    " echo 1
endfunction

augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

augroup all_autocmds
    autocmd!
    autocmd InsertChange * call AutoComplete()
    autocmd BufEnter * :call UpdateFlavour()
    autocmd FilterWritePre * if &diff | setlocal wrap< | endif " wrap lines with diff
    autocmd BufEnter * :call MarkMargin(1)
    autocmd BufEnter * :call <SID>AutoProjectRootCD()
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufReadPost quickfix nnoremap <buffer> <cr> <cr>
    autocmd BufReadPost locationlist nnoremap <buffer> <cr> <cr>
    autocmd CmdwinEnter * nnoremap <buffer> <cr> <cr>
    autocmd! BufWritePost * Neomake
    command! Filename execute ":call Filename()"
    " autocmd CursorMoved * exe printf('match EasyMotionIncCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
augroup END
