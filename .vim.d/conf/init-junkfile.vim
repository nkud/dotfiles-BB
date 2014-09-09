" Open Junk File==============================================================
      \{\{\{
command! -nargs=0 JunkFile call s:open_junk_file()
function! s:open_junk_file()
  let l:junk_dir = $HOME . '/vim-junk' . strftime('/%Y-%m-%d')
  if !isdirectory(l:junk_dir)
    call mkdir(l:junk_dir, 'p')
  endif
  let l:filename = input('Junk Code: ', l:junk_dir.strftime('/%Y-%m-%d-%H%M%S.'))
  if l:filename != ''
    execute 'edit ' . l:filename
  endif
endfunction"\}\}\}
" ============================================================================
" autocmd FileType c,cpp source ~/.vim.d/public_repo/jcommenter.vim/plugin/jcommenter.vim
autocmd FileType c,cpp map <C-x> :call JCommentWriter()<CR>

" Open junk file."{{{
"command! -nargs = 0 JunkFile call s:open_junk_file()
"function! s:open_junk_file()
    "let l:junk_dir  =  $HOME . '/.vim_junk'. strftime('/%Y/%m')
    "if !isdirectory(l:junk_dir)
        "call mkdir(l:junk_dir, 'p')
    "endif

    "let l:filename  =  input('Junk Code: ',
    "l:junk_dir.strftime('/%Y-%m-%d-%H%M%S.'))
    "if l:filename ! =  ''
        "execute 'edit ' . l:filename
    "endif
"endfunction "}}}
