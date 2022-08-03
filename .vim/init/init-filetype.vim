autocmd BufNewFile,BufRead *.md setfiletype markdown
autocmd BufNewFile,BufRead *.m setfiletype objc
autocmd BufNewFile,BufRead *.org setfiletype org
autocmd BufNewFile,BufRead *.wiki set filetype=vimwiki
autocmd BufNewFile,BufRead *.md set filetype=vimwiki
autocmd BufNewFile,BufRead *.cjson setlocal filetype=jsonc
autocmd BufNewFile,BufRead coc-settings.json setlocal filetype=jsonc
autocmd BufNewFile,BufRead *.jsonc setfiletype jsonc
autocmd BufNewFile,BufRead *.asd set filetype=lisp

autocmd BufNewFile,BufRead *.c set shiftwidth=8
autocmd BufNewFile,BufRead *.h set shiftwidth=8 cinoptions=g0
autocmd BufNewFile,BufRead *.cpp set cinoptions=g0
autocmd BufNewFile,BufRead *.erl set shiftwidth=4
autocmd BufNewFile,BufRead *.el set shiftwidth=4

autocmd FileType gitcommit,qfreplace setlocal nofoldenable
autocmd FileType javascript setlocal nocindent
autocmd FileType Makefile set noexpandtab
autocmd FileType python setlocal foldmethod=indent

