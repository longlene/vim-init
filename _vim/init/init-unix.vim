if exists('$WINDIR') || !executable('zsh')
  setglobal shell=bash
else
  setglobal shell=zsh
endif

set helplang& helplang=en,zh

if init#is_windows()
  setglobal listchars=tab:>-,trail:-,extends:>,precedes:<
else
  setglobal listchars=tab:▸\ ,trail:-,extends:»,precedes:«,nbsp:%
endif

if has('gui_running')
  finish
endif

""--------------------------------------------------------------------------
" For CUI
set t_Co=256
if !has('nvim')
  set term=xterm-256color
endif

if exists('+termguicolors')
  set termguicolors
endif
