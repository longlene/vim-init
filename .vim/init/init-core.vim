set encoding=utf-8

call init#MultiEncodingSetting()

set fileformat=unix
set fileformats=unix,dos,mac " format conf

if has('win32') || has('win64')
  set shellslash " exchange path separator
endif

"" Disable default plugins
if has('gui_running')
  set guioptions=Mc " Disable menu.vim
endif

let g:loaded_logiPat           = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
