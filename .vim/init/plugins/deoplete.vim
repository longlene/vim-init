" <TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr><C-e> deoplete#cancel_popup()
inoremap <silent><expr><C-l> deoplete#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>init_cr_function()<CR>
function! s:init_cr_function() abort
  return pumvisible() ? deoplete#close_popup()."\<CR>" : "\<CR>"
endfunction

call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy', 'matcher_length'])

call deoplete#custom#source('_', 'converters', [
  \ 'converter_remove_overlap', 
  \ 'converter_case', 
  \ 'matcher_length', 
  \ 'converter_truncate_abbr', 
  \ 'converter_truncate_info', 
  \ 'converter_truncate_menu', 
  \ ])

call deoplete#custom#option('keyword_patterns', {
  \ '_': '[a-zA-Z_]\k*\(?', 
  \ 'tex': '[^\w|\s][a-zA-Z_]\w*', 
  \ })

call deoplete#custom#option({
  \ 'auto_preview': v:true,
  \ 'camel_case': v:true,
  \ 'nofile_complete_filetypes': ['denite-filter', 'zsh'],
  \ 'num_processes': 4,
  \ 'refresh_always': v:true,
  \ 'refresh_backspace': v:false,
  \ 'skip_multibyte': v:true,
  \ })

" company like
highlight Pmenu ctermbg=8 guifg=#003900 guibg=#bfbf00
highlight PmenuSel ctermbg=1 guifg=#ca0000 guibg=#fffa00
highlight PmenuSbar ctermbg=0 guibg=#fa3000

