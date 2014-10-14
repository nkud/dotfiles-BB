colorscheme default
highlight ColorColumn ctermbg=255

" COLOR THEME
syntax enable
"let g:solarized_termcolors=256
set background=dark
colorscheme landscape

" for Mac
if has('gui_macvim')
" set imdisable	" IMを無効化
    set guifont=monospace:h15
    colorscheme solarized
endif
