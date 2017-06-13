set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

Plugin 'airblade/vim-gitgutter'
Plugin 'lervag/vimtex'

call vundle#end()

syntax on

filetype indent plugin on

set fileformats=unix
set background=dark
set ruler                     " show the line number on the bar
set number                    " line numbers


set nowrap
set smarttab
set showcmd
set completeopt=menuone
set nofoldenable
set backupdir=~/.vim/backup,.
set lcs=tab:>>,nbsp:x

"  searching
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket 
set incsearch                 " incremental search

let g:syntastic_debug=0
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_python_checkers=['flake8', 'pylint', 'pydocstyle']
let g:syntastic_python_pylint_args='-d C0103,C0111,C0301,W0141,N806'
let g:syntastic_python_flake8_args='--ignore=E501,N806'

set colorcolumn=80
highlight ColorColumn ctermbg=white guibg=lightgrey
" Keep cursor centered
 nnoremap j jzz
 nnoremap k kzz
 nnoremap n nzz
 nnoremap N Nzz


" }}}
" Indentation {{{
"==============================================================================
"Default Indent
set autoindent
set smartindent
set expandtab "Use spaces instead of tabs
set shiftwidth=2 softtabstop=2 tabstop=2

"Custom Indents
autocmd Filetype lua setlocal sw=4 sts=4 ts=4
autocmd Filetype python setlocal sw=4 sts=4 ts=4
let b:verilog_indent_modules = 1

"Detect Indent
let g:indent_detector_echolevel_enter=0
let g:indent_detector_echolevel_write=0

