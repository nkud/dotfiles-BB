" include sources

source ~/.vim.d/conf/init-keymap.vim
source ~/.vim.d/conf/init-c.vim
source ~/.vim.d/conf/init-option.vim
source ~/.vim.d/conf/init-neobundle.vim
source ~/.vim.d/conf/init-junkfile.vim
source ~/.vim.d/conf/init-smartchr.vim
source ~/.vim.d/conf/init-preference.vim
source ~/.vim.d/conf/init-lightline.vim
source ~/.vim.d/conf/init-unite.vim

augroup hack234
autocmd!

if has('gui_macvim')
endif

let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
    colorscheme desert
elseif OSTYPE == "Linux\n"
    ""ここにLinux向けの設定
endif
