call plug#begin('~/.vim/plugged')

"temp
Plug 'sotte/presenting.vim'


" personal plugins
Plug 'git@gitlab.app.betfair:inaciot/vim-bf-b2b.git', {'for': 'json,javascript,js'}

" error handling
Plug 'benekastah/neomake'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" auto complete words async
Plug 'Shougo/deoplete.nvim'
Plug 'ujihisa/neco-look'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'wellle/tmux-complete.vim'
Plug 'tpope/vim-dispatch'

" snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'marijnh/tern_for_vim', {'do': 'npm install'}

" tabularize by = signs, etc. Hint [:Tab /=]
Plug 'godlygeek/tabular'

" delete all buffers except the current one
Plug 'vim-scripts/BufOnly.vim'

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

" " js helper
" Plug 'othree/javascript-libraries-syntax.vim', {'for': 'json,javascript,js'}
"
" support new ES6 syntax
Plug 'othree/yajs.vim', {'for': 'json,javascript,js'}

" color hex rgb etc
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,javascript'}

" grep
Plug 'rking/ag.vim'

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
Plug 'croaker/mustang-vim'

" latex
Plug 'gerw/vim-latex-suite', { 'for': 'latex,tex'}

" repeat motions
Plug 'tpope/vim-repeat'

" easy motion
Plug 'easymotion/vim-easymotion'

" surround helper
Plug 'tpope/vim-surround'

" match with %
Plug 'tmhedberg/matchit'

call plug#end()
