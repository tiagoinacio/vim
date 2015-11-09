" Searching
set incsearch           " search as characters are entered
set nohlsearch

"set hlsearch
set smartcase
set smartindent
set ignorecase

" Organization
set modelines=1

" copy to clipboard
set clipboard+=unnamedplus
"           +--Disable hlsearch while loading viminfo
"           | +--Remember marks for last 500 files
"           | |    +--Remember up to 10000 lines in each register
"           | |    |      +--Remember up to 1MB in each register
"           | |    |      |     +--Remember last 1000 search patterns
"           | |    |      |     |     +---Remember last 1000 commands
"           | |    |      |     |     |
"           v v    v      v     v     v
set viminfo=h,'500,<10000,s1000,/1000,:1000
set sessionoptions-=options  " Don't save options

