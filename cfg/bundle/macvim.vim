if v:lang ==? "en_PT.UTF-8"
endif

if has("gui")
    let macvim_hig_shift_movement = 1
    set background=dark
    set linespace=6
    set guifont=Monaco\ Plus\ Nerd\ File\ Types:h12
    "highlight clear SignColumn
    colorscheme codeschool
endif
