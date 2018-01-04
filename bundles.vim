set nocompatible
filetype off

if has("win32")
    set rtp+=~/vimfiles/bundle/vundle/
elseif has("unix")
    set rtp+=~/.vim/bundle/vundle/
endif
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-repeat'
Bundle 'kien/ctrlp.vim'
"Bundle 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'spolu/dwm.vim'
Bundle 'godlygeek/tabular'
Bundle 'tikhomirov/vim-glsl'
Bundle 'jnwhiteh/vim-golang'
Bundle 'ap/vim-buftabline'
Bundle 'leafgarland/typescript-vim'
filetype plugin indent on
