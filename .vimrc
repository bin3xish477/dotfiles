" installing vim-plug for Neovim
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" installing vim-plug for Vim
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" installing vim-plug on Windows
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $VIMDIR/autoload/plug.vim

" Set leader key
let mapleader="<"
let maplocalleader="<"

" SETTINGS ----------------------------------- {{{

set relativenumber
set nobackup
set nowritebackup
set noswapfile
set autoindent
set undofile
set undodir=C:\Users\rodri\.undodir
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
" toggle paste/nopaste modes
set pastetoggle=<F2>
" hex editing highlighting
set ft=xxd
"See invisible characters
" set list listchars=tab:<->\ ,trail:+,eol:$
set list listchars=trail:-,eol:$
set cursorline
set cursorcolumn
" ignore letter case while searching
set ignorecase
" use highlighting when doing search
set hlsearch
" don't wrap lines
set nowrap

colorscheme quantum
" }}}

" MAPPINGS ----------------------------------- {{{

"make jj do esc"
inoremap jj <Esc>

" faster exit key
cnoremap Q :q!<cr>

" open/source vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> :wq<cr>

" wrap current word in double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lw
" wrap current word in single quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lw

"for easier movement between Vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" PLUGINS ------------------------------------ {{{

if has("win32")
    call plug#begin("F:/Opt/Vim/vim82/plugged")
else
    call plug#begin("~/.vim/plugged")
endif
Plug 'itchyny/lightline.vim'
Plug 'maxboisvert/vim-simple-complete'
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
" }}}

" VIMSCRIPT ---------------------------------- {{{

" Emmet
let g:user_emmet_leader_key=","

""" set default terminal """
if has("win32")
  set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
else
  set shell=/bin/zsh
endif

" ABBREVIATIONS ------------------------------ {{{

" insert mode abbreviations
iabbrev waht what
iabbrev tehn then
iabbrev adn and
iabbrev yuo you
iabbrev hwen when
iabbrev thnik think
iabbrev @@ rodriguez10011999@gmail.com
" }}}

