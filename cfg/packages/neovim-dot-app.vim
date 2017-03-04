if exists('nyaovim_version')
    colorscheme emacs
    set guifont=Hack:h13

    hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
    hi CursorLine ctermbg=NONE cterm=NONE ctermfg=NONE guibg=#fff3ff
    highlight Cursor guifg=NONE guibg=magenta
    highlight NonText guifg=white guibg=white


    let s:hidden_all = 1
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
endif
