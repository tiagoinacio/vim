if has("gui")
    set nolist
    let macvim_hig_shift_movement = 1
    set linespace=2
    set guifont=MonacoB:h13
    colorscheme emacs
    let g:enable_bold_font = 1
    hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    hi CursorLine ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    highlight Cursor guifg=NONE guibg=magenta
    highlight NonText guifg=bg guibg=white
    set clipboard=unnamed

    nnoremap <bs> :Unite file_rec/async <cr>
    nnoremap <tab> :Unite<cr>
    nnoremap <leader>ls :Unite buffer<cr>
    nnoremap <leader>fp :Unite bookmark/file<cr>
    nnoremap <leader>fa :Unite bookmark/file<cr>
endif
