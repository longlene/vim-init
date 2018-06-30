""" Load dein
let $CACHE = expand('~/.cache') 
if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CACHE/dein') . '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute ' set runtimepath^=' . substitute(fnamemodify(s:dein_dir, ':p'),  '/$',  '', '')
endif


""" Dein configure
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 0

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))
call dein#load_toml('~/.vim/init/dein.toml', {'lazy': 0})
call dein#load_toml('~/.vim/init/deintheme.toml', {'lazy': 0})
call dein#load_toml('~/.vim/init/deinlazy.toml', {'lazy': 1})
call dein#load_toml('~/.vim/init/deinlang.toml', {'lazy': 1})
call dein#load_toml('~/.vim/init/deincmd.toml', {'lazy': 1})
call dein#load_toml('~/.vim/init/deinft.toml')

if dein#tap('deoplete.nvim') && has('nvim')
  call dein#disable('neocomplete.vim')
endif

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  call dein#install()
endif

