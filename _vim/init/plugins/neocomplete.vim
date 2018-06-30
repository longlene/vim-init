"" neocomplete
" Set auto completion length
let g:neocomplete#auto_completion_start_length = 2
" Set manual completion length
let g:neocomplete#manual_completion_start_length = 0
" Set minimum keyword length
let g:neocomplete#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {'default': ''}

let g:neocomplete#max_list = 100

"" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#sources#omni#functions')
      let g:neocomplete#sources#omni#functions  =  {}
endif

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns  =  {}
endif

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>""

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:neocomplete#enable_auto_close_preview  =  1

let g:neocomplete#sources#omni#input_patterns.lua =  '\w\+[.:]\|require\s*(\?["'']\w*''"])'
let g:neocomplete#sources#omni#input_patterns.php  = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.python = '[^. *\t]\.\w*\|\h\w*'

let g:neocomplete#force_omni_input_patterns.ruby  = '[^. *\t]\.\w*\|\h\w*::\w*'

let g:neocomplete#force_omni_input_patterns.python  = 
            \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.erlang =
             \ '\<[[:digit:][:alnum:]_-]\+:[[:digit:][:alnum:]_-]*'

let g:neocomplete#sources#omni#functions.go  = 'gocomplete#Complete' " Go (plugin: gocode)
let g:neocomplete#sources#omni#functions.lua  = 'xolox#lua#omnifunc'
let g:neocomplete#sources#omni#functions.javascript = ['jspc#omni', 'tern#Complete',]

let g:neocomplete#keyword_patterns._ = '\h\k*(\?'')'

let g:neocomplete#sources#vim#complete_functions  =  {
            \ 'Ref' : 'ref#complete', 
            \ 'Unite' : 'unite#complete_source', 
            \ 'VimShellExecute' :
            \      'vimshell#vimshell_execute_complete', 
            \ 'VimShellInteractive' :
            \      'vimshell#vimshell_execute_complete', 
            \ 'VimShellTerminal' :
            \      'vimshell#vimshell_execute_complete', 
            \ 'VimShell' : 'vimshell#complete', 
            \ 'VimFiler' : 'vimfiler#complete', 
            \ 'Vinarise' : 'vinarise#complete', 
            \}


let g:neocomplete#enable_insert_char_pre = 1
let g:neocomplete#ctags_command = 'ctags'
let g:neocomplete#ctags_arguments = '-R'
