set history=3000 " history size
set autoread " auto read when file changed
set smarttab " Smart insert tab setting
set expandtab " use spaces instead of tabs

set autoindent " auto indent
set cindent

" ignore the binary file
set wildignore+=*.o,*.py[co],*.fasl,*.so,*.png,*.pdf,*.dylib,*.class,*.swp

set modeline " Set Vim local buffer option to specific file

set matchpairs+=<:> " match pairs
set showmatch " show matching brackets when text indicator is over them
setglobal cpoptions-=m

set nobackup  " no backup by default

set incsearch ignorecase smartcase hlsearch

set backspace=indent,eol,start

if exists('*FoldCCtext')
  " Use FoldCCtext()
  setglobal foldtext=FoldCCtext()
endif

"" ctags: tag files, non necessary for costing too much time to cache
set tags+=./tags,./../tags

if (!has('nvim') || $DISPLAY != '') && has('clipboard')
  if has('unnamedplus')
    set clipboard& clipboard=unnamedplus " use the clipboard registr '+'
  else
    set clipboard& clipboard+=unnamed
  endif
endif

set diffopt+=algorithm:patience
