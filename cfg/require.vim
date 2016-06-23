call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git', {'for': 'json,javascript,js'}

" documentation
Plug 'heavenshell/vim-jsdoc', {'for': 'json,javascript,js'}

" error handling
Plug 'benekastah/neomake'

" more text objects
Plug 'wellle/targets.vim'
" custom text objects
Plug 'kana/vim-textobj-user'
" text object for methods
Plug 'thalesmello/vim-textobj-methodcall'

" auto completition in search
Plug 'vim-scripts/SearchComplete'

" snippers
Plug 'SirVer/ultisnips'

" auto complete words async
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'wellle/tmux-complete.vim'

" echo function args in echo area
Plug 'Shougo/echodoc.vim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
" Plug 'othree/jspc.vim'

" camel case motion
Plug 'bkad/CamelCaseMotion'

" easily go to any word on screen
Plug 'easymotion/vim-easymotion'

" preview substitute commands. Hint [:OverCommandLine]
" Plug 'osyo-manga/vim-over'

" tabularize by = signs, etc. Hint [:Tab /=]
Plug 'godlygeek/tabular'

" delete all buffers except the current one
Plug 'vim-scripts/BufOnly.vim'

" status bar
Plug 'bling/vim-airline'

" status bar themes
Plug 'vim-airline/vim-airline-themes'

" git gutter
Plug 'airblade/vim-gitgutter'

" tags
Plug 'ludovicchabant/vim-gutentags'

" comment multiple languages
Plug 'tomtom/tcomment_vim' " comment multiple languages support

" json support
Plug 'elzr/vim-json', {'for': 'json,javascript,js'}

" beatify js
Plug 'michalliu/sourcebeautify.vim', {'for': 'json,javascript,js'}

" js helper
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
"
" support new ES6 syntax
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'}

" less support
Plug 'groenewege/vim-less', {'for': 'less'} "syntax support for less

" color hex rgb etc
Plug 'gorodinskiy/vim-coloresque'

" dispatch async processes
Plug 'tpope/vim-dispatch'

" fuzzy finder
Plug 'junegunn/fzf.vim'

" explorer
Plug 'tpope/vim-vinegar'
Plug 'Shougo/unite.vim'
Plug 'liquidz/unite-bookmark-file'
Plug 'kmnk/vim-unite-giti'

" grep with context
Plug 'dyng/ctrlsf.vim'

" grep
Plug 'rking/ag.vim'

" async processes
Plug 'Shougo/vimproc.vim', {'do': 'make'}

" git commit [GV!]
Plug 'junegunn/gv.vim'

" git wrapper
Plug 'tpope/vim-fugitive'

" project root
Plug 'dbakker/vim-projectroot'

" theme
Plug 'panosl/lucario'
Plug 'daylerees/colour-schemes', {'do': 'mv ~/.vim/plugged/colour-schemes/vim/colors/* ~/.vim/colors/'}
Plug 'vim-scripts/Tango-colour-scheme'
Plug 'ajh17/Spacegray.vim'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'cocopon/iceberg.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gosukiwi/vim-atom-dark'
Plug '29decibel/codeschool-vim-theme'
Plug 'trusktr/seti.vim'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'

" latex
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'}

" helpers
Plug 'HTML-AutoCloseTag', {'for': 'html,css'}

" repeat motions
Plug 'tpope/vim-repeat'

" surround helper
Plug 'tpope/vim-surround'

" match with %
Plug 'tmhedberg/matchit'

call plug#end()
