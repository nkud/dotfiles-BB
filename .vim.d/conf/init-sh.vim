autocmd FileType sh :map <C-e> <ESC>:!sh %<CR>
au BufNewFile,BufRead *.sh    set nowrap tabstop=4 shiftwidth=4
