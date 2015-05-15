noremap <leader>do :call Doc()<CR>

function Doc()
    :JsDoc
    execute '%s/\%x40name/@method/gi'
    execute 'g/\%x40function/d'
    execute 'normal kkdd'
    execute 'normal jjjj0w'
endfunction

let g:jsdoc_default_mapping = 0

let g:jsdoc_additional_descriptions = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_allow_shorthand = 1
