" BASIC SETUP
set nocompatible
" enable syntax highlighting
syntax enable
" show number lines
set number
filetype plugin on
" allows vim to recursively look for files
set path+=**
" provide a menu showing files
set wildmenu
" turn on mouse support
set mouse=a
" File Browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',/(^/|\s\s\)\zs\.\S\+'

