so ~/.vim/autoload/plug.vim

for f in split(glob('~/.vim/cfg/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('~/.vim/cfg/bundle/*.vim'), '\n')
    exe 'source' f
endfor

