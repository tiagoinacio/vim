call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git', {'for': 'json,javascript,js'}

" documentation
Plug 'heavenshell/vim-jsdoc', {'for': 'json,javascript,js'}
Plug 'othree/jsdoc-syntax.vim'

" error handling
Plug 'benekastah/neomake'

" more text objects
Plug 'wellle/targets.vim'

" auto completition
Plug 'vim-scripts/SearchComplete'
Plug 'Shougo/deoplete.nvim'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'othree/jspc.vim'

" notes
Plug 'neilagabriel/vim-geeknote'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" motion
Plug 'haya14busa/vim-easyoperator-line'
Plug 'bkad/CamelCaseMotion'
Plug 'easymotion/vim-easymotion'
Plug 'dbarsam/vim-rainbow-parentheses'

" window
" Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/NrrwRgn' " narrow region to new buffer
" preview substitute commands. Hint [:OverCommandLine]
Plug 'osyo-manga/vim-over'
" tabularize by = signs, etc. Hint [:Tab /=]
Plug 'godlygeek/tabular'
Plug 'tpope/vim-tbone'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" tags
Plug 'ludovicchabant/vim-gutentags'

" languague support
Plug 'vim-scripts/argwrap.vim' " arguments wrap
Plug 'leafgarland/typescript-vim', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'vim-scripts/vim-dtsm', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'Quramy/tsuquyomi', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab,m'}
Plug 'elzr/vim-json', {'for': 'json,javascript,js'}
Plug 'michalliu/sourcebeautify.vim', {'for': 'json,javascript,js'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
" Plug 'ahayman/vim-nodejs-complete', {'for': 'json,javascript,js'} " syntax support for nodejs
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'} " support new ES6 syntax
" Plug 'bigfish/vim-js-context-coloring', {'do': 'npm install --update'}
Plug 'groenewege/vim-less', {'for': 'less'} "syntax support for less
Plug 'gorodinskiy/vim-coloresque' " color hex, rgb, etc
Plug 'tpope/vim-abolish'

" shell
Plug 'vim-scripts/vim-do'

" grep
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-dispatch'
Plug 'eugen0329/vim-esearch'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'

" explorer
" Plug 'tpope/vim-vinegar'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'kablamo/vim-git-log'
Plug 'junegunn/gv.vim'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'dbakker/vim-projectroot'

" theme
Plug 'KabbAmine/yowish.vim'
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
Plug 'dahu/vim-fanfingtastic'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'tommcdo/vim-exchange'
Plug 'danro/rename.vim'

call plug#end()
