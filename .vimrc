set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

syntax on
set ttyfast

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

