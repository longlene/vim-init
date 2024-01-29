" hook_add {{{
set hidden " allows toggle buffers in unsaved
set shortmess+=c
set signcolumn=number " always show signcolumn

if exists('&tagfunc')
  set tagfunc=CocTagFun
endif

let g:coc_global_extensions = [
      \ 'coc-calc',
      \ 'coc-clangd',
      \ 'coc-cmake',
      \ 'coc-css',
      \ 'coc-db',
      \ 'coc-deno',
      \ 'coc-diagnostic',
      \ 'coc-dictionary',
      \ 'coc-elixir',
      \ 'coc-erlang_ls',
      \ 'coc-explorer',
      \ 'coc-format-json',
      \ 'coc-git',
      \ 'coc-go',
      \ 'coc-godot',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-html-css-support',
      \ 'coc-json',
      \ 'coc-lightbulb',
      \ 'coc-lines',
      \ 'coc-lists',
      \ 'coc-lua',
      \ 'coc-markdown-preview-enhanced',
      \ 'coc-todo-tree',
      \ 'coc-marketplace',
      \ 'coc-pyright',
      \ 'coc-rust-analyzer',
      \ 'coc-sh',
      \ 'coc-snippets',
      \ 'coc-sql',
      \ 'coc-svg',
      \ 'coc-syntax',
      \ 'coc-toml',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-webview',
      \ 'coc-yaml',
      \ 'coc-yank',
      \ '@yaegassy/coc-marksman'
      \ ]

" Code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call s:show_documentation()<cr>

" Rename current word
nmap <leader>rn <Plug>(coc-rename)
imap <C-k> <Plug>(coc-snippets-expand-jump)

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup init#coc
  autocmd!
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Use autocmd to force lightline update.
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END
" }}}
