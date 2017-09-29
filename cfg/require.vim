call plug#begin('~/.vim/plugged')

Plug 'tiagoinacio/javascript-switch.vim'
if exists('g:javascriptswitch_mappings')
    nnoremap <leader>sw ToggleSpec()<CR>
endif

" async linting
Plug 'neomake/neomake'
Plug 'Shougo/denite.nvim'
" Plug 'rafi/vim-denite-task'

" Auto complete words async
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim', { 'for': 'js,javascript,html,ts' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'js,javascript,html,ts' }
Plug 'wellle/tmux-complete.vim'
Plug 'ujihisa/neco-look'

" Snippets
Plug 'dyng/ctrlsf.vim'

" Languages Support
Plug 'vim-scripts/DoxygenToolkit.vim', {'for': 'c,cpp,cc,c++'}
Plug 'rhysd/vim-clang-format', {'for': 'c,cpp,cc,c++'}
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,ts,javascript'} " color hex rgb etc
Plug 'mxw/vim-jsx', {'for': 'js,jsx,ts'}
Plug 'othree/jspc.vim'
if has('gui_running')
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
endif
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'elzr/vim-json', {'for': 'ts,json,javascript,js'} " json support
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

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
Plug 'ludovicchabant/vim-gutentags'

Plug 'rhysd/nyaovim-tree-view'

" GIT
Plug 'junegunn/gv.vim' " git commit [GV!]
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'airblade/vim-gitgutter' " git gutter
call plug#end()
