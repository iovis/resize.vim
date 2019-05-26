function! resize#up() abort
  silent! execute 'resize +' . g:resize_vim_size
endfunction

function! resize#down() abort
  silent! execute 'resize -' . g:resize_vim_size
endfunction

function! resize#left() abort
  silent! execute 'vertical resize -' . g:resize_vim_size
endfunction

function! resize#right() abort
  silent! execute 'vertical resize +' . g:resize_vim_size
endfunction
