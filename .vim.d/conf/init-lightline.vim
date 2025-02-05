""" lightline
let g:lightline = {
    \ 'colorscheme': 'wombat'
    \ }
"let g:lightline = {
    "\ 'colorscheme': 'wombat',
    "\ 'active': {
    "\ 'left': [ [ 'mode', 'paste' ],
    "\           [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    "\ },
    "\ 'component': {
    "\ 'readonly': '%{&filetype!="help"?"":&readonly?"X":""}',
    "\ 'modified': '%{&filetype!="help"?"":&modified?"+":&modifiable?"":"-"}',
    "\ 'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    "\ },
    "\ 'component_visible_condition': {
    "\ 'readonly': '(&filetype!="help"&& &readonly)',
    "\ 'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    "\ 'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    "\ },
    "\ 'separator': { 'left': '', 'right': '' },
    "\ 'subseparator': { 'left': '|', 'right': '|' }
"    \ }

