if v:lang ==? "en_PT.UTF-8"
endif

set autochdir

if has("gui")
    set autochdir!
    let macvim_hig_shift_movement = 1
    set linespace=6
    set guifont=Monaco\ Plus\ Nerd\ File\ Types:h13
    colorscheme railscasts
    let g:enable_bold_font = 1
    hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
endif

