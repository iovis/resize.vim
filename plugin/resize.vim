if exists('g:resize_vim_loaded') || &compatible || v:version < 700
  finish
endif
let g:resize_vim_loaded = 1

let g:resize_vim_size = 5

function! s:up()
  silent! execute 'resize +' . g:resize_vim_size
endfunction

function! s:down()
  silent! execute 'resize -' . g:resize_vim_size
endfunction

function! s:left()
  silent! execute 'vertical resize -' . g:resize_vim_size
endfunction

function! s:right()
  silent! execute 'vertical resize +' . g:resize_vim_size
endfunction

noremap <silent> <unique> <Plug>ResizeUp    :call <SID>up()<cr>
noremap <silent> <unique> <Plug>ResizeDown  :call <SID>down()<cr>
noremap <silent> <unique> <Plug>ResizeLeft  :call <SID>left()<cr>
noremap <silent> <unique> <Plug>ResizeRight :call <SID>right()<cr>
