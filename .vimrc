" include sources

" bundles
source ~/.vim.d/conf/init-neobundle.vim
" for plugins
source ~/.vim.d/conf/init-smartchr.vim
" for programming
source ~/.vim.d/conf/init-python.vim
source ~/.vim.d/conf/init-ruby.vim
source ~/.vim.d/conf/init-unite.vim
source ~/.vim.d/conf/init-c.vim
source ~/.vim.d/conf/init-sh.vim
" for layout
source ~/.vim.d/conf/init-preference.vim
source ~/.vim.d/conf/init-lightline.vim
" my options
source ~/.vim.d/conf/init-option.vim
source ~/.vim.d/conf/init-keymap.vim
" others
source ~/.vim.d/conf/init-junkfile.vim

" depend
let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
    colorscheme desert
elseif OSTYPE == "Linux\n"
    ""ここにLinux向けの設定
endif
