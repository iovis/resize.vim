if exists('g:resize_vim_loaded') || &compatible || v:version < 700
  finish
endif
let g:resize_vim_loaded = 1
let g:resize_vim_vertical = 3
let g:resize_vim_horizontal = 6

noremap <silent> <unique> <Plug>ResizeUp    :call resize#up()<cr>
noremap <silent> <unique> <Plug>ResizeDown  :call resize#down()<cr>
noremap <silent> <unique> <Plug>ResizeLeft  :call resize#left()<cr>
noremap <silent> <unique> <Plug>ResizeRight :call resize#right()<cr>
