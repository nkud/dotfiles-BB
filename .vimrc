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
source ~/.vim.d/conf/init-lightline.vim
" my options
source ~/.vim.d/conf/init-option.vim
source ~/.vim.d/conf/init-keymap.vim
" others
source ~/.vim.d/conf/init-junkfile.vim

" source ~/.vim.d/conf/init-darwin-preference.vim

source ~/.vim.d/conf/init-changelog.vim

if has("mac")
  " for mac
  source ~/.vim.d/conf/init-darwin-preference.vim
elseif has("win32unix")
  " for cygwin
  source ~/.vim.d/conf/init-cygwin-preference.vim
elseif has("win64")
  " for 64bit windows
  source ~/.vim.d/conf/init-cygwin-preference.vim
elseif has("win32")
  " for 32bit windows
  source ~/.vim.d/conf/init-cygwin-preference.vim
elseif has("unix")
  " for unix
  source ~/.vim.d/conf/init-darwin-preference.vim
endif
