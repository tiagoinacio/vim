if has("gui")
    set nolist
    let macvim_hig_shift_movement = 1
    set linespace=5
    set guifont=MonacoB:h13
    colorscheme emacs
    let g:enable_bold_font = 1
    hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    hi CursorLine ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    hi FoldColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    highlight Cursor guifg=NONE guibg=magenta
    highlight NonText guifg=bg guibg=white
    set clipboard=unnamed
    nmap <BS> :find
    nmap <tab> :ls<cr>:e
endif
