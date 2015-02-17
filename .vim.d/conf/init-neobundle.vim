" vundle set ----------------------
set nocompatible
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim.d/public_repo/neobundle.vim/
  set runtimepath+=~/.vim.d/public_repo/vimproc.vim/
endif
call neobundle#rc(expand('~/.vim.d/public_repo/bundle'))
" self manage
"NeoBundle 'gmarik/vundle'
" vundle search
" NeoBundle 'autodate.vim'
NeoBundle 'c.vim'
NeoBundle 'cocoa.vim'
" NeoBundle 'css_color.vim'
" NeoBundle 'EasyMotion'
" NeoBundle 'Gist.vim'
NeoBundle 'Indent-Guides'
NeoBundle 'neocomplcache'
NeoBundle 'ref.vim'
NeoBundle 'repeat.vim'
" NeoBundle 'SingleCompile'
" NeoBundle 'speeddating.vim'
"NeoBundle 'sudo.vim'
NeoBundle 'surround.vim'
NeoBundle 'tango.vim'
"NeoBundle 'Solarized'
"NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'altercation/solarized.git'
" NeoBundle 'TwitVim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'ZenCoding.vim'
NeoBundle 'smartchr'
""" github
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/neomru.vim.git'
" NeoBundle 'Shougo/git-vim.git'
" NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite-build.git'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'itchyny/landscape.vim'

NeoBundle 'tpope/vim-fugitive'

"NeoBundle 'ujihisa/unite-font.git'
"NeoBundle 'ujihisa/unite-colorscheme.git'
"NeoBundle 'osho-manga/unite-fold.git'
NeoBundle 'tsukkee/unite-tag.git'
NeoBundle 'kannokanno/unite-todo.git'
"NeoBundle 'choplin/unite-vim_hacks.git'

NeoBundle 'mattn/webapi-vim.git'
" NeoBundle 'eagletmt/onlinejudge-vim.git'
NeoBundle 'vim-scripts/Align.git'
NeoBundle 'vim-scripts/newspaper.vim'
NeoBundle 'vim-scripts/Wombat.git'
NeoBundle 'vim-scripts/SingleCompile.git'
NeoBundle 'vim-scripts/pyte.git'
NeoBundle 'vim-scripts/molokai.git'
NeoBundle 'scrooloose/nerdcommenter.git'
NeoBundle 'thinca/vim-guicolorscheme.git'
NeoBundle 'nathanaelkane/vim-indent-guides.git'
"NeoBundle 'davidhalter/jedi-vim.git'

" NeoBundle 'vim-scripts/jcommenter.vim'

" NeoBundle 'kakkyz81/evervim.git'

NeoBundleCheck

filetype plugin indent on
