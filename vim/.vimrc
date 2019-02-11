" be iMproved (nocompatible with vi)
set nocompatible

set langmenu=en_US.UTF-8

" enable the mouse in all modes
set mouse=a

" Mouse handling for the terminal that emits SGR-styled mouse reporting.
" Fixes scrolling in st.
" See :h ttymouse and https://github.com/vim/vim/issues/2419.
set ttymouse=sgr

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set encoding=utf-8
set termencoding=utf-8

set tabstop=8
set expandtab
set softtabstop=4

" show line numbers
set nu

filetype plugin on
filetype indent on

syntax enable

set listchars=tab:··
set list

" highlight current line
set cursorline

" reload file on change
set autoread

colorscheme solarized8
" https://github.com/lifepillar/vim-solarized8

set background=dark

if has("gui_running")
  set lines=50 columns=100
  set guioptions-=L         " disable left scrollbar
  set guioptions-=e         " disable GUI tabs (make it as in console)
  set guioptions-=T         " disable toolbar
endif

" automatically re-read config
autocmd! bufwritepost ~/.vim/vimrc source ~/.vim/vimrc

" always show status line
set laststatus=2

" disable mode indicator since we have lightline
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
