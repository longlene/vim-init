" <TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

inoremap <expr><C-g> deoplete#refresh()
inoremap <expr><C-e> deoplete#cancel_popup()
inoremap <silent><expr><C-l> deoplete#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>init_cr_function()<CR>
function! s:init_cr_function() abort
  return deoplete#cancel_popup() . "\<CR>"
endfunction

inoremap <expr> ' pumvisible() ? deoplete#close_popup() : "'"

call deoplete#custom#source('_', 'matchers', ['matcher_head'])

call deoplete#custom#source('_', 'converters', [
  \ 'converter_remove_paren',
  \ 'converter_remove_overlap', 
  \ 'matcher_length', 
  \ 'converter_truncate_abbr', 
  \ 'converter_truncate_menu', 
  \ 'converter_auto_delimiter',
  \ ])

call deoplete#custom#option('keyword_patterns', {
  \ '_': '[a-zA-Z_]\k*\(?', 
  \ 'tex': '[^\w|\s][a-zA-Z_]\w*', 
  \ })

call deoplete#custom#option('camel_case', v:true)

" company like
highlight Pmenu ctermbg=8 guifg=#003900 guibg=#bfbf00
highlight PmenuSel ctermbg=1 guifg=#ca0000 guibg=#fffa00
highlight PmenuSbar ctermbg=0 guibg=#fa3000

set completeopt-=preview
