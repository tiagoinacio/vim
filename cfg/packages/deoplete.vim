if has('nvim')
    if !exists('g:deoplete#omni#input_patterns')
        let g:deoplete#omni#input_patterns = {}
    endif

    " let g:deoplete#enable_refresh_always = 1

    " if has("gui")
        " let g:deoplete#enable_at_startup = 0
        " let g:deoplete#disable_auto_complete = 1
    " else
        let g:deoplete#enable_at_startup = 1
        let g:deoplete#disable_auto_complete = 0
    " endif

    " let g:deoplete#sources = {}
    " let g:deoplete#sources._ = ['buffer', 'member', 'tag', 'file', 'dictionary', 'tmuxcomplete']

    " close the documentation window when competion is done
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

    " " use <TAB> for completion
    " inoremap <silent><expr> <c-d>
    " \ deoplete#mappings#manual_complete()
end
