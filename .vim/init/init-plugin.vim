let s:dein_dir = expand('~/.cache/dein') 
if !isdirectory(expand(s:dein_dir))
  call mkdir(expand(s:dein_dir), 'p')
endif

let s:dein_repo = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

"" dein runtimepath
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo, ':p')
endif

"" dein configurations
let g:dein#lazy_rplugins = v:true

if dein#load_state(s:dein_dir)
  let s:toml = $INIT_PATH . 'dein.toml'
  let s:lazy_toml = $INIT_PATH . 'dein_lazy.toml'
  let s:ft_toml = $INIT_PATH . 'dein_ft.toml'

  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#load_toml(s:ft_toml)
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

if has('vim_starting') && ! has('nvim')
  filetype plugin indent on
  syntax enable
endif
