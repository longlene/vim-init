" hook_source {{{
let g:indentLine_bufTypeExclude = ['terminal']

if $TERM != "linux"
  let g:indentLine_char = '┊'
endif

let g:indentLine_color_gui = '#A4E57E' "for gvim
let g:indentLine_color_term = 239 "for vim
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 'niv'
let g:indentLine_fileTypeExclude = ['help', 'man', 'coc-explorer', 'floaterm', 'json', 'jsonc']
" }}}
