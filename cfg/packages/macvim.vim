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
    highlight Cursor guifg=NONE guibg=MAGENTA
    highlight NonText guifg=bg guibg=white
    set clipboard=unnamed
    nmap <BS> :Unite file_rec/async<cr>
    nmap <leader>fa :Favorites<cr>
endif
