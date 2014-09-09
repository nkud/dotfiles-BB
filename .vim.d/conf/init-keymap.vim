"-------------------------------------------------------------------------------
"git-vim
nmap ,aa :<C-u>!git add --all<CR>
nmap ,bb :<C-u>!git bb<CR>
nmap ,cc :<C-u>!git commit<CR>
nmap ,cu :<C-u>!git commit -m "---"<CR>
nmap ,dd :<C-u>!git diff<CR>
nmap ,ll :<C-u>!git log --oneline --decorate --graph --all -20<CR>
nmap ,lg :<C-u>!git log<CR>
nmap ,ss :<C-u>!git ss<CR>
"nmap ,pp :<C-u>!git push<CR>
"-------------------------------------------------------------------------------
nmap tk :<C-u>tabnext<CR>
nmap tj :<C-u>tabprevious<CR>
nmap tn :<C-u>tabnew<CR>:Unite file file_mru buffer<CR>
nmap vv <S-v>
nmap U <ESC>:redo<CR>
"-------------------------------------------------------------------------------
               
" 移動を画面中央のままにする
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <Tab> %
vnoremap <Tab> %

nnoremap <S-Left> <C-w><
nnoremap <S-Right> <C-w>>
nnoremap <S-Up> <C-w>-
nnoremap <S-Down> <C-w>+

inoremap jj <ESC>
"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must exist!)
"    F5   -  open quickfix error window
"    F6   -  close quickfix error window
"    F7   -  display previous error
"    F8   -  display next error   
"-------------------------------------------------------------------------------
map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>
"SingleCompile
nmap  <F9>  :SCCompileRun<cr> 
nmap  <F10> :SCCompile<cr>

"twitvim
let twitvim_count = 40
nnoremap ,tp :<C-u>PosttoTwitter<CR>
nnoremap ,tt :<C-u>FriendsTwitter<CR>
