call plug#begin('~/.vim/plugged')

Plug 'tiagoinacio/javascript-switch.vim'
Plug 'tiagoinacio/fzf-bookmark.vim'
if exists('g:javascriptswitch_mappings')
    nnoremap <leader>sw ToggleSpec()<CR>
endif

Plug 'neomake/neomake'
Plug 'Shougo/neoyank.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-scripts/CmdlineComplete' " auto complete in command mode
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim', { 'for': 'js,javascript,html,ts' }
Plug 'ujihisa/neco-look'

" file tree explorer
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'

" search
Plug 'Shougo/denite.nvim'
Plug 'dyng/ctrlsf.vim'

Plug 'rhysd/vim-clang-format', {'for': 'c,cpp,cc,c++'}
Plug 'gorodinskiy/vim-coloresque', {'for': 'css,less,scss,html,js,ts,javascript'} " color hex rgb etc
Plug 'hail2u/vim-css3-syntax', {'for': 'css,less,sass'}
Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty', {'for': 'js,jsx,ts'}
Plug 'othree/html5-syntax.vim', {'for': 'html,js,jsx,ts'}
Plug 'othree/html5.vim', {'for': 'html,js,jsx,ts'}
if has('gui_running')
else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'pbogut/fzf-mru.vim'
endif
Plug 'tomtom/tcomment_vim' " comment multiple languages support
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

Plug 'vim-scripts/BufOnly.vim' " delete all buffers except the current one
Plug 'dbakker/vim-projectroot' " project root
Plug 'tpope/vim-repeat' " repeat motions
Plug 'easymotion/vim-easymotion' " easy motion
Plug 'tpope/vim-surround' " surround helper
Plug 'tmhedberg/matchit' " match with %
Plug 'Valloric/MatchTagAlways' " match always visually equal signs, brackets, etc
Plug 'tpope/vim-dispatch'

Plug 'ludovicchabant/vim-gutentags'

Plug 'pechorin/any-jump.vim'
Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'tpope/vim-fugitive' " git wrapper
Plug 'airblade/vim-gitgutter' " git gutter
Plug 'ripxorip/bolt.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()
