" search
vnoremap s :OverCommandLine<cr>/\%V
nnoremap s :OverCommandLine<cr>/

" substitute
vnoremap S :OverCommandLine<cr>s/\%V
nnoremap S :OverCommandLine<cr>s/

"  let g:over_command_line_key_mappings = {
"     \   "\<C-l>" : "\<C-f>",
"     \   "\<C-h>" : "\<C-b>",
"     \}
