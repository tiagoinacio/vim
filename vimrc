"set rtp+=~/.vim/bundle/Vundle.vim
"set gdefault
set guioptions-=Be
set completeopt-=preview
set guioptions=aAc
set noswapfile
set shell=/bin/sh
set list!

""############################
""# Auto Commands             #
""############################

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd StdinReadPre * let s:std_in=1
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
let g:golden_ratio_autocommand = 0
let g:syntastic_javascript_checkers = ['jslint']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""#############################
""# Colors                    #
""#############################
colorscheme solarized "nice colorscheme
syntax enable        " enable syntax processing
set background=dark

""#############################
""# Spaces & Tabs             #
""#############################
set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " tabs are spaces
set linespace=2
set listchars=tab:▸\ ,eol:¬,nbsp:⋅

""#############################
""# UI Config                 #
""#############################
set number              " show line numbers
set showcmd             " show command in bottom barset cursorline
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set encoding=utf-8
set fileencoding=utf-8
set guifont=Monaco:h12
set term=screen-256color
set winheight=3
set winheight=999
set columns=120
set winwidth=84
set laststatus=2
filetype off
filetype plugin on
set backspace=indent,eol,start
set nocompatible              " be iMproved, required
set splitright

""#############################
""# Searching                 #
""#############################
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
set smartcase
set smartindent
set ignorecase

""#############################
""# Folding                   #
""#############################
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level

""#############################
""# Movement                  #
""#############################

" move vertically by visual line
"nnoremap j gj
"nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" highlight last inserted text
nnoremap gV `[v`]

""#############################
""# Leader Shortcut           #
""#############################
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>

""#############################
""# GundoToggle               #
""#############################
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" save session
nnoremap <leader>s :mksession<CR>

""#############################
""# CtrlP                     #
""#############################
set runtimepath^=~/.vim/bundle/ctrlp.vim
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

""#############################
""# Launch Config             #
""#############################
call pathogen#infect()                      " use pathogen
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim'

""#############################
""# TMux                      #
""#############################
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""#############################
""# Backups                   #
""#############################
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

""#############################
""# Custom Functions          #
""#############################
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
    else
      return "\<Tab>"
  endif
endfunction


""#############################
""# Organization              #
""#############################
"foldmethod=marker
"foldlevel=0
set modelines=1
" vim:foldmethod=marker:foldlevel=0
" Section Name {{{
set number "This will be folded
" "}}}

""###########################
""# Disable arrow keys      #
""###########################
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

""###########################
""# Mappings                #
""###########################
map <C-s> :NERDTreeToggle<CR>
nnoremap <C-h> :GundoToggle<CR>
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
map <leader>m :NERDTreeToggle<CR>


""#############################
""# Preferences               #
""#############################
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:airline#extensions#tabline#enabled = 1
let mapleader = ","
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
set autochdir


""############################
""# Conditionals             #
""############################
if has("gui_macvim")
    colorscheme solarized
    let macvim_hig_shift_movement = 1
endif

""############################
""# JSHint                   #
""############################
let jshint2_read = 1
let jshint2_save = 1
let jshint2_height = 3
" jshint validation
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>
"
" " show next jshint error
nnoremap <silent><F2> :lnext<CR>
inoremap <silent><F2> <C-O>:lnext<CR>
vnoremap <silent><F2> :lnext<CR>

" " show previous jshint error
nnoremap <silent><F3> :lprevious<CR>
inoremap <silent><F3> <C-O>:lprevious<CR>
vnoremap <silent><F3> :lprevious<CR>

""#########################
"" LaTex                  #
""#########################
"REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
