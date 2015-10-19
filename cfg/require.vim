call plug#begin('~/.vim/plugged')

" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git'

" documentation
Plug 'heavenshell/vim-jsdoc', {'for': 'json,javascript,js'}

" shell
Plug 'Shougo/vimshell.vim'

" error handling
Plug 'scrooloose/syntastic'

" auto completition
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

" motion
"Plug 'unblevable/quick-scope'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-expand-region'

" window
Plug 'chrisbra/NrrwRgn'
Plug 'osyo-manga/vim-over'
Plug 'godlygeek/tabular'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-scripts/BufOnly.vim'
"Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'shinokada/dragvisuals.vim'

" tags
"Plug 'szw/vim-tags'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'
Plug 'vim-scripts/Tagbar'

" debug
Plug 'sidorares/node-vim-debugger'

" languague support
Plug 'tomtom/tcomment_vim'
Plug 'yurifury/hexHighlight'
"Plug 'vim-scripts/colorsel.vim'
Plug 'vim-scripts/MatlabFilesEdition', {'for': 'matlab,m'}
Plug 'elzr/vim-json', {'for': 'json,javascript,js'}
Plug 'michalliu/sourcebeautify.vim'
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
Plug 'Quramy/vison'
Plug 'ahayman/vim-nodejs-complete', {'for': 'json,javascript,js'}
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'}
Plug 'groenewege/vim-less', {'for': 'less'}

" grep
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-dispatch'
Plug 'dyng/ctrlsf.vim'
Plug 'kien/ctrlp.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'FelikZ/ctrlp-py-matcher'

" explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'low-ghost/nerdtree-fugitive', { 'on':  'NERDTreeToggle' }
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'dbakker/vim-projectroot'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'

" theme
Plug 'tpope/vim-vividchalk'
"Plug 'godlygeek/csapprox'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'cocopon/iceberg.vim'
Plug 'mbbill/desertEx'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gosukiwi/vim-atom-dark'
Plug '29decibel/codeschool-vim-theme'
" Plug 'ryanoasis/vim-webdevicons'
Plug 'trusktr/seti.vim'
Plug 'therubymug/vim-pyte'
Plug 'endel/vim-github-colorscheme'
Plug 'vim-scripts/eclipse.vim'
Plug 'chriskempson/base16-vim'

" latex
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'}

" helpers
Plug 'HTML-AutoCloseTag', { 'for':  'html,css' }
Plug 'dahu/vim-fanfingtastic'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'tommcdo/vim-exchange'
Plug 'danro/rename.vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'vim-scripts/YankRing.vim'

" others
"Plug 'vim-scripts/repmo.vim'
"Plug 'burnettk/vim-angular'
"Plug 'nanotech/jellybeans.vim'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'jiangmiao/auto-pairs'
"Plug 'aquach/vim-http-client'
"Plug 'dbeniamine/todo.txt-vim'
"Plug 'dpzmick/neovim-hackernews'
"Plug 'tpope/vim-vinegar'
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
"Plug 'DavidEGx/ctrlp-smarttabs'
"Plug 'szw/vim-ctrlspace'
"Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plug 'embear/vim-localvimrc'
"Plug 'bkad/CamelCaseMotion'
"Plug 'whatyouhide/vim-gotham'
"Plug 'severin-lemaignan/vim-minimap'
call plug#end()
