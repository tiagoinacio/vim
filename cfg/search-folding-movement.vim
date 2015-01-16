" Searching
set incsearch           " search as characters are entered
set nohlsearch
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
set smartcase
set smartindent
set ignorecase

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
nnoremap <space> za     " space open/closes folds

" Organization
set modelines=1
set number "This will be folded

" Movement
nnoremap B ^
nnoremap E $

" copy to clipboard
set clipboard=unnamed
