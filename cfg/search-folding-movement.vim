" Searching
set incsearch           " search as characters are entered
set nohlsearch


"set hlsearch
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
set smartcase
set smartindent
set ignorecase

" Folding
set foldenable          " enable folding
set foldlevelstart=99   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
nnoremap <space> za     " space open/closes folds

" Organization
set modelines=1
set number "This will be folded

" copy to clipboard
set clipboard=unnamed
"           +--Disable hlsearch while loading viminfo
"           | +--Remember marks for last 500 files
"           | |    +--Remember up to 10000 lines in each register
"           | |    |      +--Remember up to 1MB in each register
"           | |    |      |     +--Remember last 1000 search patterns
"           | |    |      |     |     +---Remember last 1000 commands
"           | |    |      |     |     |
"           v v    v      v     v     v
set viminfo=h,'500,<10000,s1000,/1000,:1000
