call plug#begin('~/.vim/plugged')
"Plug 'benekastah/neomake' " error handling
Plug 'w0rp/ale'

" Async
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/neocomplete.vim'
" Auto complete words async
" Plug 'Shougo/deoplete.nvim'
" Plug 'ujihisa/neco-look'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim'
" Plug 'carlitux/deoplete-ternjs'
Plug 'wellle/tmux-complete.vim'

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Languages Support
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,javascript'} " color hex rgb etc
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'} " latex
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'elzr/vim-json', {'for': 'json,javascript,js'} " json support
Plug 'michalliu/sourcebeautify.vim', {'for': 'json,javascript,js'} " beatify js
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'} " support new ES6 syntax

" Helpers
Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
Plug 'dbakker/vim-projectroot' " project root
Plug 'tpope/vim-repeat' " repeat motions
Plug 'easymotion/vim-easymotion' " easy motion
Plug 'tpope/vim-surround' " surround helper
Plug 'tmhedberg/matchit' " match with %
Plug 'godlygeek/tabular' " tabularize by = signs, etc. Hint [:Tab /=]
Plug 'tpope/vim-dispatch'

" Tags
" Plug 'c0r73x/neotags.nvim'
" Plug 'ludovicchabant/vim-gutentags'

" Search
Plug 'dyng/ctrlsf.vim'

" GIT
Plug 'junegunn/gv.vim' " git commit [GV!]
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'airblade/vim-gitgutter' " git gutter

" Themes
Plug 'vim-scripts/Tango-colour-scheme'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'gosukiwi/vim-atom-dark'
Plug 'croaker/mustang-vim'
call plug#end()
