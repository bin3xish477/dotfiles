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
set undofile
set undodir=C:/Users/rodri/undodir
set encoding=utf-8

"make jj do esc"
inoremap jj <Esc>

"make esc do nothing"
inoremap <Esc> <Nop>

" toggle paste/nopaste modes
set pastetoggle=<F2>

" for lightline plugin
set laststatus=2

"for easier movement between Vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme molokai

" create directory called plugged in .vim folder
call plug#begin('.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" run :PlugInstall to install plugins
call plug#end()
