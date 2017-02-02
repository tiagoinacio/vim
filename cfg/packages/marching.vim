let g:marching_clang_command = "/usr/bin/clang"

let g:marching#clang_command#options = {
\   "cpp" : "-std=gnu++1y"
\}

let g:marching_include_paths = [
\   "/usr/include/c++/4.2.1/"
\]

let g:marching_enable_neocomplete = 1

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

set updatetime=200

imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)

imap <buffer> <C-x><C-x><C-o> <Plug>(marching_force_start_omni_complete)
