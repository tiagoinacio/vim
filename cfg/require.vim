call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git', {'for': 'json,javascript,js'}

" documentation
Plug 'heavenshell/vim-jsdoc', {'for': 'json,javascript,js'}

" error handling
Plug 'benekastah/neomake'

" auto completition
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim'
Plug 'marijnh/tern_for_vim'

" motion
Plug 'haya14busa/vim-easyoperator-line'
Plug 'bkad/CamelCaseMotion'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'dbarsam/vim-rainbow-parentheses'

" window
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/NrrwRgn' " narrow region to new buffer
Plug 'osyo-manga/vim-over' " preview substitute commands
Plug 'godlygeek/tabular' " tabularize by = signs, etc
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
" Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'

" tags
Plug 'grassdog/tagman.vim'
Plug 'vim-scripts/Tagbar'

" languague support
Plug 'leafgarland/typescript-vim', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'vim-scripts/vim-dtsm', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'Quramy/tsuquyomi', {'for': 'typescript,ts,tsc'} " for typescript
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab,m'}
Plug 'elzr/vim-json', {'for': 'json,javascript,js'}
Plug 'michalliu/sourcebeautify.vim', {'for': 'json,javascript,js'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
Plug 'ahayman/vim-nodejs-complete', {'for': 'json,javascript,js'} " syntax support for nodejs
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'} " support new ES6 syntax
Plug 'groenewege/vim-less', {'for': 'less'} "syntax support for less
Plug 'gorodinskiy/vim-coloresque' " color hex, rgb, etc
Plug 'tpope/vim-abolish'

" shell
Plug 'vim-scripts/vim-do'

" grep
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-dispatch'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf.vim'

" explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'low-ghost/nerdtree-fugitive', { 'on':  'NERDTreeToggle' }
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'dbakker/vim-projectroot'
Plug 'Shougo/unite.vim'

" theme
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'cocopon/iceberg.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gosukiwi/vim-atom-dark'
Plug '29decibel/codeschool-Vim-theme'
Plug 'trusktr/seti.vim'
Plug 'chriskempson/base16-vim'

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
Plug 'vim-scripts/YankRing.vim'

call plug#end()
