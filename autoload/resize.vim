function! resize#up() abort
  let l:sign = resize#is_edge('j') ? '+' : '-'
  silent! execute 'resize ' . l:sign . g:resize_vim_size
endfunction

function! resize#down() abort
  let l:sign = resize#is_edge('j') ? '-' : '+'
  silent! execute 'resize ' . l:sign . g:resize_vim_size
endfunction

function! resize#left() abort
  let l:sign = resize#is_edge('l') ? '+' : '-'
  silent! execute 'vertical resize ' . l:sign . g:resize_vim_size
endfunction

function! resize#right() abort
  let l:sign = resize#is_edge('l') ? '-' : '+'
  silent! execute 'vertical resize ' . l:sign . g:resize_vim_size
endfunction

function! resize#is_edge(direction) abort
  let l:current_window = winnr()
  silent! execute 'wincmd ' . a:direction

  let l:edge_window = winnr()
  silent! execute l:current_window . 'wincmd w'

  return l:current_window == l:edge_window
endfunction
