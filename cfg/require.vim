call plug#begin('~/.vim/plugged')

" async linting
Plug 'neomake/neomake'

" panels
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/neomru.vim'

" Async
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Enhancements to explorer
Plug 'tpope/vim-vinegar'

Plug 'Shougo/neocomplete.vim'
" Auto complete words async
" Plug 'Shougo/deoplete.nvim'
" Plug 'ujihisa/neco-look'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'wellle/tmux-complete.vim'

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Languages Support
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,javascript'} " color hex rgb etc
Plug 'othree/jspc.vim'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'} " latex
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'elzr/vim-json', {'for': 'json,javascript,js'} " json support
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

" Helpers
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
Plug 'dbakker/vim-projectroot' " project root
Plug 'tpope/vim-repeat' " repeat motions
Plug 'easymotion/vim-easymotion' " easy motion
Plug 'tpope/vim-surround' " surround helper
Plug 'tmhedberg/matchit' " match with %
Plug 'godlygeek/tabular' " tabularize by = signs, etc. Hint [:Tab /=]
Plug 'tpope/vim-dispatch'
Plug 'Raimondi/delimitMate'

" Tags
" Plug 'c0r73x/neotags.nvim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" Search

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
