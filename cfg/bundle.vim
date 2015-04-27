call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git'

" vundle
Plug 'gmarik/vundle'

" documentation
Plug 'heavenshell/vim-jsdoc'

" error handling
Plug 'scrooloose/syntastic'

" auto completition
" Plug 'marijnh/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'vim-scripts/YankRing.vim'

" motion
Plug 'terryma/vim-multiple-cursors'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/repmo.vim'

" window
Plug 'vim-scripts/BufOnly.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'shinokada/dragvisuals.vim'

" tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'vim-scripts/Tagbar'

" languague support
Plug 'embear/vim-localvimrc'
Plug 'vim-scripts/MatlabFilesEdition'
Plug 'claco/jasmine.vim'
Plug 'elzr/vim-json'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'groenewege/vim-less'

" grep
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'DavidEGx/ctrlp-smarttabs'
"Plug 'szw/vim-ctrlspace'

" theme
"Plug 'nanotech/jellybeans.vim'
Plug 'endel/vim-github-colorscheme'
Plug 'chriskempson/base16-vim'
"Plug 'whatyouhide/vim-gotham'

" latex
Plug 'gerw/vim-latex-suite'

" helpers
Plug 'HTML-AutoCloseTag'
Plug 'jiangmiao/auto-pairs'
Plug 'dahu/vim-fanfingtastic'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'tommcdo/vim-exchange'

" explorer
Plug 'scrooloose/nerdtree'
""Plug 'tpope/vim-vinegar'
Plug 'dbakker/vim-projectroot'
Plug 'sjl/gundo.vim'

" names
Plug 'danro/rename.vim'

"Plug 'jistr/vim-nerdtree-tabs'
" others
Plug 'aquach/vim-http-client'
Plug 'dbeniamine/todo.txt-vim'
Plug 'chrisbra/vim-diff-enhanced'

"Plug 'maksimr/vim-jsbeautify'
"Plug 'michalliu/sourcebeautify.vim'
"Plug 'mattn/emmet-vim'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/CSApprox'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'

call plug#end()
