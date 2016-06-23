if has("gui")
    source ~/.vim/cfg/packages/word_complete
    let g:WC_min_len = 2
    autocmd BufEnter * call DoWordComplete()
endif
