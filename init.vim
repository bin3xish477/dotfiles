"
" Install vim-plug for Neovim first: https://github.com/junegunn/vim-plug
"

set relativenumber
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set undofile
set undodir=~/.undodir
set encoding=utf-8

"make jj do esc"
inoremap jj <Esc>

"make esc do nothing"
inoremap <Esc> <Nop>

" toggle paste/nopaste modes
set pastetoggle=<F2>

" for lightline plugin
set laststatus=2

" hex editing highlighting
set ft=xxd

"for easier movement between Vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Fix cursor replacement after closing nvim
set guicursor=

"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$


call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
