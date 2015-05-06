if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ackprg = 'ag --nogroup --nocolor --column'
    let g:ag_prg = 'ag --column -l'
    let g:agprg = 'ag --column -l'
    let g:ag_format = '%f:%l:%c:%m'
    "let g:ackprg = 'ack -m 1'
    "let g:ackprg = 'ag  --vimgrep --nogroup --nocolor --column -l'
    " bind \ (backward slash) to grep shortcut
endif
