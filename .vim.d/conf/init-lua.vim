
"-------------------------------------------------------------------------------
"C-n でファイルのsyntaxチェック、
"C-e でファイルを実効(only perl and ruby)
autocmd FileType lua :map <C-e> <ESC>:!lua %<CR>
