set number
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
" esc in insert mode
inoremap jj <esc>
" esc in command mode
cnoremap jj <C-C>
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
set undodir=H:\Opt\Vim\undodir
set undofile
set t_Co=256
syntax on
colorscheme monokai
