syntax enable        " enable syntax processing
"set relativenumber
set showcmd             " show command in bottom barset cursorline
filetype indent on      " load filetype-specific indent files
set cursorline
set cursorcolumn
set wildmenu            " visual autocomplete for command menu
set encoding=utf-8
set winfixwidth
set fileencoding=utf-8
set guifont=Monaco\ Plus\ Nerd\ File\ Types:h13
"set colorcolumn=120
set columns=120
set winwidth=84
set scrolljump=5
set synmaxcol=180
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

"set winheight=3
"set winheight=999
"set nocursorcolumn
"set nocursorline
"set showtabline=2
"set showmatch           " highlight matching [{()}]


hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi CursorLine cterm=NONE ctermbg=NONE
hi CursorColumn ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
