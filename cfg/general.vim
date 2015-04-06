let g:BASH_Ctrl_j = 'off'
set guioptions-=Be
set completeopt-=preview
set guioptions=aAc#
set noswapfile
set shell=/bin/bash
set list!
set history=1000         " remember more commands and search history
set undolevels=1000
set mouse=a
set title
set pastetoggle=<F2>
set autowrite       "Save buffer automatically when changing files
set updatecount=10                  "Save buffer every 10 chars typed

" session options
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

set scrolloff=2                     "Scroll when 2 lines from top/bottom

set ruler                           "Show cursor location info on status line
let g:tlist_javascript_settings = 'javascript;r:var;s:string;a:array;o:object;u:function'


