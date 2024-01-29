function! init#bootstrap(dein_dir) abort
  " dein bootstrap
  if &runtimepath !~# '/dein.vim'
    let l:dein_repo_dir = a:dein_dir .. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(l:dein_repo_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' l:dein_repo_dir
    endif
    execute 'set runtimepath^=' .. l:dein_repo_dir
  endif

  " dein options
  "let g:dein#auto_recache = !has('win32')
  let g:dein#lazy_rplugins = v:true
  let g:dein#install_progress_type = 'floating'
  let g:dein#install_check_diff = v:true
  let g:dein#enable_notification = v:true
  let g:dein#install_check_remote_threshold = 24 * 60 * 60
  let g:dein#auto_remote_plugins = v:false
  let g:dein#install_copy_vim = has('nvim')

  " artemis bootstrap
  if &runtimepath !~# '/vim-artemis'
    let l:artemis_repo_dir = a:dein_dir .. '/repos/github.com/tani/vim-artemis'
    if !isdirectory(l:artemis_repo_dir)
      execute '!git clone https://github.com/tani/vim-artemis' l:artemis_repo_dir
    endif
    execute 'set runtimepath^=' .. l:dein_repo_dir
  endif
endfunction

function! init#current_function() abort
  let l:function = ''
  if get(g:, 'coc_enabled', 0) && !empty(get(b:, 'coc_current_function', ''))
    let l:function = b:coc_current_function
  elseif !empty(get(b:, 'vista_nearest_method_or_function', ''))
    let l:function = b:vista_nearest_method_or_function
  endif
  return !empty(l:function) ? l:function : ''
endfunction

"" Encoding settings
function! init#encoding()
  if has("multi_byte")
    " Set fileencoding priority
    if getfsize(expand("%")) > 0
      set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    else
      set fileencodings=cp936,big5,euc-jp,euc-kr,latin1
    endif
    " CJK environment detection and corresponding setting
    if v:lang =~ "^zh_CN"
      " Use cp936 to support GBK, euc-cn == gb2312
      set encoding=cp936
      set termencoding=cp936
      set fileencoding=cp936
    elseif v:lang =~ "^zh_TW"
      " cp950, big5 or euc-tw
      set encoding=big5
      set termencoding=big5
      set fileencoding=big5
    elseif v:lang =~ "^ko"
      " Copied from someone's dotfile, untested
      set encoding=euc-kr
      set termencoding=euc-kr
      set fileencoding=euc-kr
    elseif v:lang =~ "^ja_JP"
      " Copied from someone's dotfile, unteste
      set encoding=euc-jp
      set termencoding=euc-jp
      set fileencoding=euc-jp
    endif
    " Detect UTF-8 locale, and replace CJK setting if needed
    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
      set encoding=utf-8
      set termencoding=utf-8
      set fileencoding=utf-8
    endif
  else
    echoerr "Sorry, this version of (g)vim wasn't compiled with multi_byte"
  endif
endfunction

function! init#filetype() abort
  if execute('filetype') =~# 'OFF'
    " lazy loading
    silent! filetype plugin indent on
    syntax enable
    filetype detect
  endif
endfunction
