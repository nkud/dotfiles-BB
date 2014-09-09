
"-------------------------------------------------------------------------------
"C-n でファイルのsyntaxチェック、
"C-e でファイルを実効(only perl and ruby)
autocmd FileType ruby :map <C-n> <ESC>:!ruby -cW %<CR>
autocmd FileType ruby :map <C-e> <ESC>:!ruby %<CR>
au BufNewFile,BufRead *.rhtml set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb    set nowrap tabstop=2 shiftwidth=2
