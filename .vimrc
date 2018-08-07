set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

syntax on
set ttyfast

if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
if !isdirectory($HOME."/.vim/dir")
    call mkdir($HOME."/.vim/dir", "", 0700)
endif
if !isdirectory($HOME."/.vim/backup-dir")
    call mkdir($HOME."/.vim/backup-dir", "", 0700)
endif

set undofile
set undodir=~/.vim/undo-dir
set backup
set backupdir=~/.vim/backup-dir
set swapfile
set directory=~/.vim/dir

set background=dark
set laststatus=2
set number

set ruler

set visualbell

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent

set encoding=utf-8

let g:airline_theme='simple'

call vundle#end()

