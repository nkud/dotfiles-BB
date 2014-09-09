set ignorecase
set number
set visualbell t_vb=
set enc=utf-8
set expandtab
set nobomb
set nowrap
set ignorecase " 大文字小文字区別しない
set smartcase " 検索文字に大文字小文字区別する
set shiftround " インデントでshiftwidthの倍数に丸める
set shiftwidth=2
set tabstop=2
set switchbuf=useopen
set list
set textwidth=0 "自動的に改行が入るのを無効化
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set colorcolumn=81
set background=light " 背景はライト
set backspace=indent,eol,start
set clipboard=unnamed " use OS clipboard
set laststatus=2

"----------------------------------
" my option
set autoindent
" set backupdir=$HOME/backup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer 
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
"set directory=$HOME/backup
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
set incsearch
"シフト移動幅
set shiftwidth=2
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別しない
set nosmartcase
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan
set wildmenu
set mouse=a
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>
" for gvim
set guifont=LiberationMono
