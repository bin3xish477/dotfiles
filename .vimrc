" installing vim-plug for Neovim
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" installing vim-plug for Vim
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" installing vim-plug on Windows
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $VIMDIR/autoload/plug.vim

" Set leader key
let mapleader=","
let maplocalleader=","

set relativenumber
set nobackup       "no backup files
set nowritebackup
"only in case you don't want a backup file while editing
set noswapfile
set autoindent
set undofile
set undodir=C:\Users\rodri\.undodir
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab

"make jj do esc"
inoremap jj <Esc>

" faster exit key
cnoremap Q :q!<CR>

" open vimrc file
nnoremap <leader>rc :split $MYVIMRC<CR>

" toggle paste/nopaste modes
set pastetoggle=<F2>

" hex editing highlighting
set ft=xxd

"for easier movement between Vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"See invisible characters
" set list listchars=tab:>\ ,trail:+,eol:$
set list listchars=trail:-,eol:$

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Emmet
let g:user_emmet_leader_key=","

""" set default terminal """
if has("win32")
  set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
else
  set shell=/bin/zsh
endif

colorscheme quantum
