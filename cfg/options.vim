"""""""""""""""
"" VARIABLES ""
"""""""""""""""
let $JS_CMD='node'
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set shell=/bin/bash
let g:BASH_Ctrl_j = 'off'
let g:tlist_javascript_settings = 'javascript;r:var;s:string;a:array;o:object;u:function'

"""""""""""""
"" BACKUPS ""
"""""""""""""
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"""""""""""""""""""""""""""
"" FILETYPE AND ENCODING ""
"""""""""""""""""""""""""""
syntax enable        " enable syntax processing
filetype indent on      " load filetype-specific indent files
filetype off
filetype plugin on
set backspace=indent,eol,start
set scrolljump=5
set synmaxcol=180
set dictionary=/usr/share/dict/web2
set dictionary+=/usr/share/dict/web2a
set dictionary+=/usr/share/dict/connectives
set complete+=k
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

"""""""""""""""""""""
"" GENERAL OPTIONS ""
"""""""""""""""""""""
set path+=**
set wildignore+=**/node_modules/**,**/build/**,**/coverage/**,node_modules/**,*/node_modules/*
au FocusLost * silent! wa
set noswapfile
set nolist " dolar sign at end of line
set title
set tags=./tags;/
set so=999 " center cursor

"""""""""""""""
"" SEARCHING ""
"""""""""""""""
" set nohlsearch
set smartcase
set smartindent
set ignorecase

""""""""""""""""""
"" ORGANIZATION ""
""""""""""""""""""
set modelines=1
"           +--Disable hlsearch while loading viminfo
"           | +--Remember marks for last 200 fmap ^[[A <up>
map ^[[B <down>
map ^[[C <right>
map ^[[D <left>iles
"           | |    +--Remember up to 1000 lines in each registmap ^[[A <up>
map ^[[B <down>
map ^[[C <right>
map ^[[D <left>er
"           | |    |      +--Remember up to 0.5MB in each register
"           | |    |      |     +--Remember last 200 search patterns
"           | |    |      |     |     +---Remember last 200 commands
"           | |    |      |     |     |
"           v v    v      v     v     v
set viminfo=h,'200,<1000,s500,/200,:200
set clipboard=unnamed

""""""""""""""
"" SESSIONS ""
""""""""""""""
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

""""""""""""""""""""""""""
"" TABS AND INDENTATION ""
""""""""""""""""""""""""""
set tabstop=2        " number of visual spaces per TAB
set softtabstop=2    " number of spaces in tab when editing
set expandtab        " tabs are spaces
set linespace=2
set shiftwidth=2
set foldmethod=indent
set foldignore=
set foldlevel=99

"""""""""""""""""""
"" GUI STRUCTURE ""
"""""""""""""""""""
set guioptions=aAc#
set guioptions-=Be
set cursorline
set cursorcolumn
set wildmenu            " visual autocomplete for command menu
set showcmd             " show command in bottom barset cursorline
set winfixwidth
set winwidth=84
set splitright
" set nonumber
set number
set relativenumber
set cursorline
let g:quickfix_is_open = 0
let g:location_list_is_open = 0
set hlsearch

"""""""""""""""""
"" STATUS LINE ""
"""""""""""""""""
" set statusline=Git\ \-\>\ "
" set statusline+=%{exists('g:loaded_fugitive')?fugitive#head():''}
" set statusline+=\ -\ %f
" set statusline+=%{gutentags#statusline()}
" set statusline+=%=        " Switch to the right side
" set statusline+=\ %y
" set statusline+=%l        " Current line
" set statusline+=/         " Separator
" set statusline+=%L        " Total lines
" set statusline=%{ALEGetStatusLine()} " override previous


set mouse=a
