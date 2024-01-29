" Encoding
language message C
set encoding=utf-8 fileformat=unix fileformats=unix,dos,mac
call init#encoding()

" Appearance
set number background=dark display=lastline 
set noshowmode
set cmdheight=2 " set command height
set showmatch matchpairs+=<:> " match pairs
set showcmd
set laststatus=2 " show status
set ruler " cursor position displayed
set title titlelen=95
set concealcursor=niv conceallevel=2

" Editing
set smartindent autoindent expandtab smarttab
set autoread modeline 
set backspace=indent,eol,start
set hlsearch " highlight search results
set incsearch ignorecase smartcase
set tags+=./tags,../tags

set history=3000 " history size
set nobackup nowritebackup " no backup

" Command line
set wildignore+=*.o,*.py[co],*.fasl,*.so,*.png,*.pdf,*.dylib,*.class,*.swp
set wildoptions+=pum diffopt+=algorithm:patience

" Performance
set updatetime=300 ttyfast lazyredraw
if !has('nvim')
  set ttyscroll=3 " speedup scrolling
  set ttymouse=xterm2
endif

if has('gui_running')
  set guifont=Monaco
  set guioptions=Mc " Disable menu.vim
else
  set t_Co=256 " open 256 color
  set termguicolors
  if !has('nvim')
    set term=xterm-256color
  endif
endif

if has('win32') || has('win64')
  set listchars=tab:>-,trail:-,precedes:<
  set shellslash " exchange path separator
else
  set listchars=tab:▸\ ,trail:-,precedes:«,nbsp:%
endif

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m
endif

let g:loaded_matchparen = 1
let g:loaded_matchit = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
