"" unite.vim
let g:unite_enable_start_insert=1
call unite#custom_default_action('file,buffer' , 'open')
nnoremap <C-N> :<C-u>Unite file file_mru<CR>
"nnoremap <silent> ,f :<C-u>Unite file buffer<CR>
"nnoremap <silent> ,b :<C-u>Unite buffer<CR>
"nnoremap <silent> ,y :<C-u>Unite history/yank<CR>
"nnoremap <silent> ,w :<C-u>Unite window<CR>
"nnoremap <silent> ,s :<C-u>Unite source<CR>
"nnoremap <silent> ,c :<C-u>Unite command<CR>
"nnoremap <silent> ,t :<C-u>Unite tag<CR>


