if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#disable_auto_complete = 0
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
end
