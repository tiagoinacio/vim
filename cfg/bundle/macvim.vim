if has("gui")
    colorscheme base16-google
    let macvim_hig_shift_movement = 1
    set background=light
    set linespace = 8
    highlight clear SignColumn
endif

if v:lang ==? "en_PT.UTF-8"
    colorscheme base16-google
    set background=light
    "set linespace = 3
    highlight clear SignColumn
endif
