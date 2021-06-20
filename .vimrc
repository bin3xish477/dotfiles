" Set leader key
let mapleader="<"
let maplocalleader="<"

" SETTINGS ----------------------------------- {{{

set nocompatible
set relativenumber
set nobackup
set nowritebackup
set noswapfile
set autoindent
set undofile
if has('win32')
  set undodir=C:\Users\rodri\.undodir
else
  set undodir=~/.undodir
endif
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
if has('gui_running')
  set guifont=Cascadia\ Mono:h11
endif

filetype plugin on
" }}}

" MAPPINGS ----------------------------------- {{{

"make jj do esc"
inoremap jj <Esc>
" faster exit key
cnoremap Q :q!<cr>
" open/source vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> :wq<cr>
" wrap visually selected text in double quotes
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" wrap visually selected text in single quotes
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
" wrap visually selected text in paranthesis
vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>
" wrap visually selected text in square brackets
vnoremap <leader>[ <esc>`<i[<esc>`>la]<esc>
" wrap visually selected text in curly brackets
vnoremap <leader>{ <esc>`<i{<esc>`>la}<esc>
" wrap visually selected line in double quotes
xnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
" wrap visually selected line in single quotes
xnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
" wrap visually selected line in paranthesis
xnoremap <leader>( <esc>`<i(<esc>`>a)<esc>
" wrap visually selected line in square brackets
xnoremap <leader>[ <esc>`<i[<esc>`>a]<esc>
" wrap visually selected line in curly brackets
xnoremap <leader>{ <esc>`<i{<esc>`>a}<esc>
" wrap current word in double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lw
" wrap current word in single quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lw
" wrap current word in paranthesis
nnoremap <leader>( viw<esc>a)<esc>bi(<esc>lw
" wrap current word in square brackets
nnoremap <leader>[ viw<esc>a[<esc>bi]<esc>lw
" wrap current word in curly brackets
nnoremap <leader>{ viw<esc>a{<esc>bi}<esc>lw
" move to beginning of line
nnoremap H ^
" move to the end of line
nnoremap L $
"for easier movement between Vim panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}
"
" PLUGINS ------------------------------------ {{{

if has('win32')
    call plug#begin("F:/Opt/Vim/vim82/plugged")
else
    call plug#begin("~/.vim/plugged")
endif
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
call plug#end()

" emmet
let g:user_emmet_leader_key="<"

" gitgutter specify git executable path
if has('win32')
  let g:gitgutter_git_executable = 'F:\opt\Git\Git\bin\git.exe'
else
  let g:gitgutter_git_executable = '/usr/bin/git'
endif

" }}}

" VIMSCRIPT ---------------------------------- {{{

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

" dracula vim (https://draculatheme.com/vim)
packadd! dracula
syntax enable
colorscheme dracula
