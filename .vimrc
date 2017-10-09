set nocompatible  
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'callfgarland/typescript-vim' 

call vundle#end()
execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hls
set incsearch
set mouse=a
set clipboard=unnamed
syntax enable 
command NT NERDTree

let base16colorspace=256
if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
endif

if !exists("g:ycm_semantic_triggers")
      let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

