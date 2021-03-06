if has("gui")
else
    nnoremap <silent> <Leader>gd :call GitDiff()<cr>
    nnoremap <leader><BS> :Files<cr>
    nnoremap <leader>bl :BLines<cr>
    nnoremap <leader>hh :History<cr>
    nnoremap <leader>gs :GFiles?<cr>
    nnoremap <leader>hc :History:<cr>
    nnoremap <leader>hs :History/<cr>
    nnoremap <leader>mr :FZFMru<cr>
    " nnoremap <tab> :GitFiles<cr>
    nnoremap <BS> :GitFiles<cr>
    nnoremap <leader>ta :Tags<cr>
    nnoremap <leader>bt :BTags<cr>
    vnoremap <BS> /
    "  nnoremap <leader>bf :BLines<cr>function
    "  nnoremap <leader>bl :BLines<cr>
    nnoremap <leader>ls :Buffers<cr>
    " nnoremap <tab> :call FZFCommands('s:ExecFZFCommand')<cr>
    " nnoremap <tab> :Commands<cr>

    imap <c-x><c-l> <plug>(fzf-complete-line)

    " let g:fzf_launcher = "~/.home/bin/fzf.sh %s"
    set rtp+=/usr/local/opt/fzf
    " autocmd VimEnter * command! -nargs=+ -complete=file Ag call fzf#vim#ag_raw(<q-args>)

    function! FZFCommands(function)
        call fzf#run({
                    \   'source': 'printf "
                    \Ag\nBCommits\nBLines\nBuffers\nBTags\n
                    \Colors\nCommands\nCommits\nFiletypes\n
                    \Files\nFZF\nLocate\n
                    \GFiles\nGFiles?\nHistory\nHistory:\nHistory\nHelptags\nMarks\n
                    \Maps\nTags\nWindows\nSnippets\n
                    \"',
                    \ 'sink': function(a:function),
                    \ 'options': '--multi'
                    \ })
    endfunction

    function! s:ExecFZFCommand(command)
        echom a:command
        exec a:command
        " call feedkeys('i', 'n')
    endfunction

    function! s:FindFilesInDirectory()
        let s:path = expand('%:p:h')
        exec "Files ".s:path
    endfunction

    command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
      \ {'source': 'find ./* -type d',
      \  'sink': 'cd'}))

    function! s:ChangeDirectory(path)
        exec "cd ".a:path
    endfunction

    function! s:OpenAllFiles(path)
        exec "cd ".a:path
        exec "Files ".a:path
        " call feedkeys('i', 'n')
    endfunction

    function! s:OpenGitFiles(path)
        exec "cd ".a:path
        GitFiles
        " call feedkeys('i', 'n')
    endfunction

    function! ListFavorites(path)
        call fzf#run({
                    \   'source': 'cat $HOME/.fzf_favorites',
                    \   'sink': function(a:path)
                    \ })
    endfunction

    function! GitDiff()
        call fzf#run({
                    \   'source': 'git diff master --name-only',
                    \   'sink': 'e'
                    \ })
    endfunction

    " [Buffers] Jump to the existing window if possible
    let g:fzf_buffers_jump = 1

    " [[B]Commits] Customize the options used by 'git log':
    let g:fzf_commits_log_options =
                \ '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

    " [Tags] Command to generate tags file
    let g:fzf_tags_command = 'ctags -R'



    "Find A Directory
    function! FZFDirectory(directory)
        let directory = expand(a:directory)
        let command = 'tree -i -f -d "'.directory.'"'
        call fzf#run({
                    \ 'source': command,
                    \ 'sink': 'Unite directory',
                    \ 'options': ''
                    \ })
    endfunction
    command! -nargs=+ -complete=dir FZFDirectory call FZFDirectory('<args>')

    "Grepping Using FZF #TODO File With :File: Name
    function! s:escape(path)
        return substitute(a:path, ' ', '\\ ', 'g')
    endfunction
    "TODO Extend To Other Handlers
    function! AgHandler(line)
        let parts = split(a:line, ':')
        let [fn, lno] = parts[0 : 1]
        execute 'e '. s:escape(fn)
        execute lno
        normal! zz
    endfunction
    function! FZFGrep(pattern, ...)
        let filter = a:0 > 0 ? a:1 : '*'
        let command = 'ag -i "'.a:pattern.'" '.filter
        call fzf#run({
                    \ 'source': ,
                    \ 'sink': function('AgHandler'),
                    \ 'options': '+m'
                    \ })
    endfunction
    command! -nargs=* FZFGrep call FZFGrep(<f-args>)

    " Customize fzf colors to match your color scheme
    let g:fzf_colors =
                \ { 'fg':      ['fg', 'Normal'],
                \ 'bg':      ['bg', 'Normal'],
                \ 'hl':      ['fg', 'Comment'],
                \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                \ 'hl+':     ['fg', 'Statement'],
                \ 'info':    ['fg', 'PreProc'],
                \ 'prompt':  ['fg', 'Conditional'],
                \ 'pointer': ['fg', 'Exception'],
                \ 'marker':  ['fg', 'Keyword'],
                \ 'spinner': ['fg', 'Label'],
                \ 'header':  ['fg', 'Comment'] }

    function! s:ag_to_qf(line)
        let parts = split(a:line, ':')
        return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
                    \ 'text': join(parts[3:], ':')}
    endfunction

    function! s:ag_handler(lines)
        if len(a:lines) < 2 | return | endif

        let cmd = get({'ctrl-x': 'split',
                    \ 'ctrl-v': 'vertical split',
                    \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
        let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

        let first = list[0]
        execute cmd escape(first.filename, ' %#\')
        execute first.lnum
        execute 'normal!' first.col.'|zz'

        if len(list) > 1
            call setqflist(list)
            copen
            wincmd p
        endif
    endfunction
endif
