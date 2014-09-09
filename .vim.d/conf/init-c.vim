" for c.vim
let g:C_Styles = { '*.c,*.h' : 'default', '*.cc,*.cpp,*.hh,*.hpp' : 'CPP' }
let g:C_LineEndCommColDefault=50
let g:C_MapLeader  = ','
let g:C_CFlags  = '-Wall -g -o0 -c -I'
autocmd FileType c,cpp nnoremap <buffer> <silent> <C-c><C-c> :<C-u>call C_EndOfLineComment()<CR>

" autocmd FileType c,cpp nnoremap <buffer> <silent> ,m :<C-u>call C_EndOfLineComment()<CR>XXX: 
"autocmd FileType c,cpp nnoremap <buffer> <silent> ,mm :<C-u>!make<CR> 
"autocmd FileType c,cpp nnoremap <buffer> <silent> ,ma :<C-u>!make all<CR> 
"autocmd FileType c,cpp nnoremap <buffer> <silent> \ll ccprintf("%s", "");<ESC>hhi

" タブ幅を分岐
au BufNewFile,BufRead *.c    set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.h    set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cpp    set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.hpp    set nowrap tabstop=2 shiftwidth=2

