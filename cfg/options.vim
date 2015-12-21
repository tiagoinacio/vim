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
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set scrolljump=5
set synmaxcol=180

"""""""""""""""""""""
"" GENERAL OPTIONS ""
"""""""""""""""""""""
set autochdir
set completeopt-=preview
set noswapfile
set list!
set title
set tags=./tags;/

"""""""""""""""
"" SEARCHING ""
"""""""""""""""
set incsearch           " search as characters are entered
set nohlsearch
set smartcase
set smartindent
set ignorecase

""""""""""""""""""
"" ORGANIZATION ""
""""""""""""""""""
set modelines=1
"           +--Disable hlsearch while loading viminfo
"           | +--Remember marks for last 200 files
"           | |    +--Remember up to 1000 lines in each register
"           | |    |      +--Remember up to 0.5MB in each register
"           | |    |      |     +--Remember last 200 search patterns
"           | |    |      |     |     +---Remember last 200 commands
"           | |    |      |     |     |
"           v v    v      v     v     v
set viminfo=h,'200,<1000,s500,/200,:200
set clipboard+=unnamedplus

""""""""""""""
"" SESSIONS ""
""""""""""""""
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

""""""""""""""""""""""""""
"" TABS AND INDENTATION ""
""""""""""""""""""""""""""
set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " tabs are spaces
set linespace=2
set listchars=tab:▸\ ,nbsp:.
set shiftwidth=4
set foldmethod=indent
set foldignore=
set foldlevel=99

""""""""""""
"" CURSOR ""
""""""""""""
set mouse=a
" set so=999 "center cursor on the screen

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
set nonumber
set cursorline
set noruler                           "Show cursor location info on status line
let g:quickfix_is_open = 0
let g:location_list_is_open = 0

"""""""""""""""""
"" STATUS LINE ""
"""""""""""""""""
set statusline=Git\ \-\>\ "
set statusline+=%{exists('g:loaded_fugitive')?fugitive#head():''}
set statusline+=\ -\ %f
set statusline+=%=        " Switch to the right side
set statusline+=\ %y
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
