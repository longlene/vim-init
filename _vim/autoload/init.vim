function! init#on_filetype() abort
  if execute('filetype') =~# 'OFF'
    " Lazy loading
    silent! filetype plugin indent on
    syntax enable
    filetype detect
  endif
endfunction

function! init#init(path, ...) abort
  let use_global = get(a:000, 0, !has('vim_starting'))
  let abspath = resolve(expand('~/.vim/init/init-' . a:path . '.vim'))
  if !use_global
    execute 'source' fnameescape(abspath)
    return
  endif

  let content  =  map(readfile(abspath),
        \ 'substitute(v:val, "^\\W*\\zsset\\ze\\W", "setglobal", "")')
  let tempfile = tempname()
  try
    call writefile(content, tempfile)
    execute 'source' fnameescape(tempfile)
  finally
    if filereadable(tempfile)
      call delete(tempfile)
    endif
  endtry
endfunction

augroup InitAutoCmd
  autocmd!
  autocmd FileType,Syntax,BufNewFile,BufNew,BufRead *? call init#on_filetype()
  autocmd CursorHold *.toml syntax sync minlines=300
augroup END


function! init#is_windows() abort
  return has('win64') || has('win32')
endfunction

function! init#is_darwin() abort
  return has('mac') || has('macunix') || has('gui_macvim') || (!executable('xdg-open') && system('uname') =~? '^darwin')
endfunction

