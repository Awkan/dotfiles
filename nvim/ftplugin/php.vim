" Declare the general config group for autocommand
augroup php
  autocmd!
augroup END

" source every plugin configs
for file in split(glob("~/nvim/pluggedconf/php/*.nvimrc"), '\n')
    exe 'source' file
endfor

" write ctags each time we save files (& for asynchronously)
autocmd php BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

