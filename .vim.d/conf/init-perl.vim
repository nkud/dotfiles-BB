"-------------------------------------------------------------------------------
"C-n でファイルのsyntaxチェック、
"C-e でファイルを実効(only perl and ruby)
autocmd FileType perl :map <C-n> <ESC>:!perl -cw %<CR>
autocmd FileType perl :map <C-e> <ESC>:!perl %<CR>

