syntax enable        " enable syntax processing
"set showtabline=2
set relativenumber
set showcmd             " show command in bottom barset cursorline
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set encoding=utf-8
set laststatus=2
set winfixwidth
set fileencoding=utf-8
set guifont=MonacoPatched:h11
"set winheight=3
"set winheight=999
set columns=120
set winwidth=84
set laststatus=2
filetype off
filetype plugin on
set backspace=indent,eol,start
set splitright
set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " tabs are spaces
set linespace=2
set listchars=tab:▸\ ,nbsp:.
set shiftwidth=4
"hi clear NonText
"hi link NonText Ignore
"au ColorScheme * hi clear NonText | hi link NonText Ignore
let $JS_CMD='node'
" center cursor on the screen
set so=999
"hi CursorLine term=NONE cterm=NONE guibg=NONE

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%121v.\+/
