" Author: Tiago Inácio
" repo: https://github.com/tiagoinacio/vim
"
so ~/.vim/autoload/plug.vim

for f in split(glob('~/.vim/cfg/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('~/.vim/cfg/packages/*.vim'), '\n')
    exe 'source' f
endfor
