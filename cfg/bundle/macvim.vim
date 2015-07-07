if v:lang ==? "en_PT.UTF-8"
endif

if has("gui")
    colorscheme codeschool
    let macvim_hig_shift_movement = 1
    set background=dark
    set linespace=8
    highlight clear SignColumn
endif
