"""  UI setting
language message C

set ruler " always show current positions
set number " always show line number

set wildmenu " turn on wile menu
set wildmode=list:longest,list:full

set laststatus=2
set cmdheight=2 " Height of command line
set showcmd " always show incomplete commands
set title " show title
set titlelen=95 " title length

set noshowmode

if has("gui_running")
  set guifont=Monaco
  "set guifont=Monaco\ for\ Powerline
  "set guifontwide=WenQuanYi\ Zen\ Hei
  set guifont=Menlo\ for\ Powerline
  set background=light
  "set t_Co=256 " 256 color mode
  "set cursorline " highlight current line
else
  set background=dark
endif

if !exists('g:colors_name')
  "  colorscheme molokai
endif

set ttyfast

set display=lastline 

"" for conceal
set conceallevel=2 concealcursor=niv
