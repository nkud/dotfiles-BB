"-------------------------------------------------------------------------------
"C-n でファイルのsyntaxチェック、
"C-e でファイルを実効(only perl and ruby)
au BufNewFile,BufRead *.py    set nowrap tabstop=4 shiftwidth=4
autocmd FileType python :map <C-e> <ESC>:!python %<CR>

