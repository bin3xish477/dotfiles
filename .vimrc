" installing vim-plug for Neovim
" sh -c 'curl -fLo \"${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" installing vim-plug for Vim
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" installing vim-plug on Windows
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $VIMDIR/autoload/plug.vim

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
set list listchars=tab:>\ ,trail:+,eol:$
" set list listchars=trail:-,eol:$
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
nnoremap <leader>sv :w<cr> :source $MYVIMRC<cr> :q<cr>
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
" change current directory to the directory the current file is in
nnoremap <leader>cd :cd %:h<cr>
" delete current file
nnoremap <leader>df :call delete(@%)<cr>
" operator remap for content in paranthesis
onoremap p i(
" operator remap for content in square brackets
onoremap b i[
" operator remap for content in single quotes
onoremap s i'
" operator remap for content in double quotes
onoremap q i"

if has('gui_running')
  nnoremap <leader>p "+gP
endif

" exit terminal window with <Esc>
tnoremap <Esc> <c-\><c-n>:q!<cr>

" MarkDown Setup 
nnoremap <leader>md :normal i
  \# Title<cr>o<cr>o<cr>
  \## Subtitle<cr>o<cr>o<cr>
  \## Subtitle<cr>o<cr>o<cr>

" Python Setup PlaceHolder Code
nnoremap <leader>py :normal i
  \#!/usr/bin/env python3<esc>o<cr>
  \def main():<cr>
  \<tab>pass<esc>o<cr>
  \<bs>if f"{__name__}" == "__main__":<cr>
  \<tab>pass<cr><esc>

" Go Setup PlaceHolder Code
nnoremap <leader>go :normal i
" finish this!
" }}}
" PLUGINS ------------------------------------ {{{

if has('win32')
    call plug#begin("F:/Opt/Vim/vim82/plugged")
else
    call plug#begin("~/.vim/plugged")
endif
" install Pyright for coc.vim, Python code completion
" :CocInstall coc-pyright
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
call plug#end()

" emmet
let g:user_emmet_leader_key="<"

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" gitgutter specify git executable path
if has('win32')
  let g:gitgutter_git_executable = 'F:\opt\Git\Git\bin\git.exe'
else
  let g:gitgutter_git_executable = '/usr/bin/git'
endif

" }}}

" VIMSCRIPT ---------------------------------- {{{

""" set default terminal based on OS"""
function SetTerm()
  if has("win32")
    set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
  else
    set shell=/bin/zsh
  endif
endfunction

call SetTerm()
" }}}

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

" AUTOCOMMANDS ---------------------------- {{{

" automatically create specified files without initially saving them
autocmd BufNewFile *.py,*.sh,*.ps1 :write
" reindent Python file before reading and writing
autocmd BufWritePre,BufRead *.py,*.sh,*.ps1 :normal gg=G
" ----- buffer-local autocmd-abbreviations
" python if statement abbreviations
autocmd FileType python :iabbrev <buffer> iff if:<left>
" bash if statement abbreviations
autocmd FileType bash :iabbrev <buffer> iff if[[<space>]]; then
" go build
autocmd FileType go nnoremap <buffer> <leader>gb <Plug>(go-build)
" go run
autocmd FileType go nnoremap <buffer> <leader>gr <Plug>(go-run)
" use `za` to expand and contract folds surrounded by \"{{{ and \" }}} borders
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" -- COLORSCHEME ---------------------------- {{{
" https://github.com/tomasr/molokai/blob/master/colors/molokai.vim
colorscheme molokai
" }}}
