let g:clang_format#code_style='google'

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -3,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "Standard" : "C++03"}

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
