so ~/.vim/vundle

set nocompatible              " be iMproved, required

for f in split(glob('~/.vim/cfg/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('~/.vim/cfg/bundle/*.vim'), '\n')
    exe 'source' f
endfor
