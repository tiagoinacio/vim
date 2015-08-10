hi clear
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name="clouds-midnight"

if has("gui_running")
    set background=light
endif

hi Normal       guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi DiffAdd      guifg=#927C5D    guibg=#191919   gui=NONE cterm=NONE
hi DiffChange   guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi DiffText     guifg=#929292    guibg=#191919   gui=NONE cterm=NONE
hi DiffDelete   guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi Folded       guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi LineNr       guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi NonText      guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi VertSplit    guifg=#929292   guibg=#929292   gui=NONE cterm=NONE
hi StatusLine   guifg=#929292   guibg=#191919   gui=BOLD cterm=BOLD
hi StatusLineNC guifg=#929292   guibg=#191919   gui=ITALIC cterm=NONE
hi ModeMsg      guifg=#929292    gui=NONE cterm=NONE
hi MoreMsg      guifg=#929292    gui=NONE cterm=NONE
hi Title        guifg=#929292  guibg=#191919   gui=NONE cterm=NONE
hi WarningMsg   guifg=#929292   guibg=#191919  gui=NONE cterm=NONE
hi SpecialKey   guifg=#929292 guibg=#191919   gui=ITALIC cterm=NONE
hi MatchParen   guifg=#929292   guibg=#191919   gui=NONE cterm=NONE
hi Underlined   guifg=#929292   gui=UNDERLINE cterm=UNDERLINE
hi Directory    guifg=#3C403B    gui=NONE cterm=NONE
hi Visual       guifg=#929292 guibg=#191919     gui=NONE cterm=NONE
hi VisualNOS    guifg=#929292 guibg=#191919    gui=NONE cterm=NONE
hi IncSearch    guifg=#929292   guibg=#191919   gui=ITALIC cterm=NONE
hi Search       guifg=#929292   guibg=#191919   gui=ITALIC cterm=NONE
hi Ignore       guifg=#3C403B   gui=NONE cterm=NONE
hi Identifier   guifg=#929292   guibg=#191919    gui=NONE cterm=NONE
hi PreProc      guifg=#929292   gui=BOLD cterm=BOLD
hi Comment      guifg=#3C403B   gui=ITALIC cterm=NONE
hi Constant     guifg=#929292    guibg=#191919    gui=NONE cterm=NONE
hi String       guifg=#5D90CD  guibg=#191919   gui=NONE cterm=NONE
hi Function     guifg=#929292 guibg=#191919    gui=BOLD cterm=BOLD
hi Statement    guifg=#929292   gui=BOLD cterm=BOLD
hi Type         guifg=#929292    gui=BOLD cterm=BOLD
hi Number       guifg=#46A609   guibg=#191919    gui=NONE cterm=NONE
hi Todo         guifg=#929292 guibg=#191919   gui=BOLD cterm=BOLD
hi Special      guifg=#929292    guibg=#191919    gui=BOLD cterm=BOLD
hi rubySymbol   guifg=#960B73    gui=NONE cterm=NONE
hi Error        guifg=#