call plug#begin('~/.vim/plugged')

Plug 'tiagoinacio/javascript-switch.vim'
if exists('g:javascriptswitch_mappings')
    nnoremap <leader>sw ToggleSpec()<CR>
endif

" async linting
Plug 'neomake/neomake'
" Plug 'Shougo/denite.nvim'
" Plug 'rafi/vim-denite-task'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'romgrk/vimfiler-prompt'
Plug 'ggalindezb/Vim-Colorscheme-Template'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto complete words async
Plug 'vim-scripts/CmdlineComplete' " auto complete in command mode
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim', { 'for': 'js,javascript,html,ts' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'js,javascript,html,ts' }
Plug 'wellle/tmux-complete.vim'
Plug 'ujihisa/neco-look'

" Register
Plug 'junegunn/vim-peekaboo'

" Snippets
Plug 'eugen0329/vim-esearch'

" Languages Support
" Plug 'vim-scripts/DoxygenToolkit.vim', {'for': 'c,cpp,cc,c++'}
Plug 'rhysd/vim-clang-format', {'for': 'c,cpp,cc,c++'}
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,ts,javascript'} " color hex rgb etc
Plug 'hail2u/vim-css3-syntax', {'for': 'css,less,sass'}
Plug 'mxw/vim-jsx'
" Plug 'mxw/vim-jsx', {'for': 'js,jsx,ts'}
Plug 'MaxMEllon/vim-jsx-pretty', {'for': 'js,jsx,ts'}
Plug 'othree/html5-syntax.vim', {'for': 'html,js,jsx,ts'}
Plug 'othree/html5.vim', {'for': 'html,js,jsx,ts'}
" Plug 'othree/jspc.vim'
if has('gui_running')
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
    Plug 'pbogut/fzf-mru.vim'
endif
Plug 'tomtom/tcomment_vim' " comment multiple languages support
" Plug 'elzr/vim-json', {'for': 'ts,json,javascript,js'} " json support
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

" Helpers
Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
Plug 'dbakker/vim-projectroot' " project root
Plug 'tpope/vim-repeat' " repeat motions
Plug 'easymotion/vim-easymotion' " easy motion
Plug 'tpope/vim-surround' " surround helper
Plug 'tmhedberg/matchit' " match with %
Plug 'Valloric/MatchTagAlways' " match always visually equal signs, brackets, etc
Plug 'godlygeek/tabular' " tabularize by = signs, etc. Hint [:Tab /=]
Plug 'tpope/vim-dispatch'

" Tags
" Plug 'c0r73x/neotags.nvim'
Plug 'ludovicchabant/vim-gutentags'

" Plug 'rhysd/nyaovim-tree-view'

" GIT
Plug 'junegunn/gv.vim' " git commit [GV!]
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'airblade/vim-gitgutter' " git gutter
call plug#end()
