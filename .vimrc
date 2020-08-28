set number
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

inoremap jm <esc>
cnoremap jm <esc>
xnoremap jm <esc>
"make esc do nothing"
inoremap <Esc> <Nop>

" PEP 8 Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set undodir=/home/alexis/vim_undo_dir
set undofile
syntax on
colorscheme monokai
