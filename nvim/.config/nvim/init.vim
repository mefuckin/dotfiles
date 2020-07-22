call plug#begin()

" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'kristijanhusak/vim-dirvish-git'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-dirvish'
Plug 'lervag/vimtex'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()

colorscheme base16-tomorrow-night-eighties

set cursorline " highlight current line
set hidden
set nomodeline
set noshowmode " disable mode indicator (since i have lightline)
set number " show line numbers
set spelllang=ru_yo,ru_ru,en_us
set tabstop=4
set termguicolors " true color terminal

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;
						\`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" this magic is needed to have colors inside tmux
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" set list
" set listchars=trail:◦

" function! OnTabEnter(path)
" 	if isdirectory(a:path)
" 		let dirname = a:path
" 	else
" 		let dirname = fnamemodify(a:path, ":h")
" 	endif
" 	execute "tcd ". dirname
" endfunction()

" autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))


" CtrlP
" let g:ctrlp_cmd = 'CtrlPBuffer'

" Lightline
let g:lightline = {'colorscheme': 'Tomorrow_Night_Eighties'}

" Vimtex
let g:vimtex_compiler_progname = 'nvr'

" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'default', 'ext': '.wiki'}]
