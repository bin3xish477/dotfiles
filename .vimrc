set relativenumber
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set undodir=~/.vim_undo_dir
set undofile

"make jj do esc"
inoremap jj <Esc>

"make esc do nothing"
inoremap <Esc> <Nop>
