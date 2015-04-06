let g:ctrlspace_use_tabline = 1
if executable("ag")
    let g:ctrlspace_glob_command = 'ag -l --nocolor -g ""'
endif
