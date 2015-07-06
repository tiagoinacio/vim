call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git'

" documentation
Plug 'heavenshell/vim-jsdoc', {'for': 'json,javascript,js'}

" error handling
Plug 'scrooloose/syntastic'

" auto completition
Plug 'marijnh/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'vim-scripts/YankRing.vim'

" motion
Plug 'Lokaltog/vim-easymotion'
Plug 'bkad/CamelCaseMotion'
Plug 'terryma/vim-expand-region'
"Plug 'vim-scripts/repmo.vim'

" window
Plug 'wesQ3/vim-windowswap'
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-scripts/BufOnly.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'shinokada/dragvisuals.vim'

" tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags', {'for': 'json,javascript,js'}
Plug 'vim-scripts/Tagbar', {'for': 'json,javascript,js'}

" languague support
"Plug 'embear/vim-localvimrc'
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab,m'}
Plug 'elzr/vim-json', {'for': 'json,javascript,js'}
"Plug 'burnettk/vim-angular'
Plug 'michalliu/sourcebeautify.vim'
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
Plug 'Quramy/vison'
Plug 'ahayman/vim-nodejs-complete', {'for': 'json,javascript,js'}
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'}
Plug 'groenewege/vim-less', {'for': 'less'}

" grep
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'kien/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'DavidEGx/ctrlp-smarttabs'
"Plug 'szw/vim-ctrlspace'

" theme
Plug 'ryanoasis/vim-webdevicons'
Plug 'trusktr/seti.vim'
"Plug 'nanotech/jellybeans.vim'
Plug 'therubymug/vim-pyte'
Plug 'endel/vim-github-colorscheme'
Plug 'vim-scripts/eclipse.vim'
Plug 'chriskempson/base16-vim'
"Plug 'whatyouhide/vim-gotham'

" latex
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'}

" helpers
Plug 'HTML-AutoCloseTag', { 'for':  'html,css' }
" Plug 'jiangmiao/auto-pairs'
Plug 'dahu/vim-fanfingtastic'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'tommcdo/vim-exchange'

" explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'low-ghost/nerdtree-fugitive', { 'on':  'NERDTreeToggle' }
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'dbakker/vim-projectroot'
Plug 'sjl/gundo.vim'

" names
Plug 'danro/rename.vim'

"Plug 'jistr/vim-nerdtree-tabs'
" others
"Plug 'aquach/vim-http-client'
"Plug 'dbeniamine/todo.txt-vim'
Plug 'chrisbra/vim-diff-enhanced'
"Plug 'dpzmick/neovim-hackernews'
""Plug 'tpope/vim-vinegar'
"Plug 'maksimr/vim-jsbeautify'
"Plug 'michalliu/sourcebeautify.vim'
"Plug 'mattn/emmet-vim'
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/CSApprox'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'claco/jasmine.vim'
call plug#end()
