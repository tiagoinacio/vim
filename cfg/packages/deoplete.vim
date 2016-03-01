let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" close the documentation window when competion is done
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" use <TAB> for completion
" inoremap <silent><expr> <Tab>
" \ pumvisible() ? "\<C-n>" :
" \ deoplete#mappings#manual_complete()
