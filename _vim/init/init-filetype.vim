"" for kernel c codeing style
autocmd BufRead,BufNewFile *.c set shiftwidth=8
autocmd BufRead,BufNewFile *.h set shiftwidth=8

"" for c++ language
autocmd BufRead,BufNewFile *.cpp set cinoptions=g0
autocmd BufRead,BufNewFile *.h set cinoptions=g0
autocmd BufRead,BufNewFile *.asd set filetype=lisp

autocmd FileType gitcommit,qfreplace setlocal nofoldenable

"" markdown
"autocmd BufRead,BufNewFile *.md setfiletype markdown

"" for objc language
autocmd BufNewFile,BufRead *.m setfiletype objc

"" for javascript no cindent
autocmd FileType javascript setlocal nocindent

autocmd FileType Makefile set noexpandtab

autocmd BufNewFile,BufRead *.erl, *.es, *.hrl, *.yaws, *.xrl setf erlang

autocmd FileType python setlocal foldmethod=indent

autocmd BufRead, BufNewFile *.wiki set filetype=vimwiki
autocmd BufRead, BufNewFile *.md set filetype=vimwiki
