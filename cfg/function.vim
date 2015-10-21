"function! Start()
"endfunction
"call Start()

"function! RangeSearch(direction)
"  call inputsave()
"  let g:srchstr = input(a:direction)
"  call inputrestore()
"  if strlen(g:srchstr) > 0
"    let g:srchstr = g:srchstr.
"          \ '\%>'.(line("'<")-1).'l'.
"          \ '\%<'.(line("'>")+1).'l'
"  else
"    let g:srchstr = ''
"  endif
"endfunction

"augroup AutoUpdateCTags
"    autocmd!
"    autocmd BufWritePost,FileWritePost *.* call AutoUpdateCTags()
"augroup END

"function! MarkMargin (on)
"    if exists('b:MarkMargin')
"        try
"            call matchdelete(b:MarkMargin)
"        catch /./
"        endtry
"        unlet b:MarkMargin
"    endif
"    if a:on
"        let b:MarkMargin = matchadd('ColorColumn', '\%121v', 100)
"    endif
"endfunction

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
"function! <SID>StripTrailingWhitespaces()
"    " save last search & cursor position
"    let _s=@/
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    let @/=_s
"    call cursor(l, c)
"endfunction

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

"autocmd BufEnter * :call MarkMargin(1)

function! ClipboardYank()
  call system('pbcopy', @@)
endfunction

function! ClipboardPaste()
  let @@ = system('pbpaste')
endfunction


function! ToggleNumber() " toggle between number and relativenumber
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

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

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction

augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END


autocmd BufEnter * :call <SID>AutoProjectRootCD()
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

autocmd BufEnter * :call UpdateFlavour()
autocmd BufWritePre * :%s/\s\+$//e
"autocmd InsertLeave * :set relativenumber
"autocmd InsertEnter * :set relativenumber!
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
"au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
"au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
