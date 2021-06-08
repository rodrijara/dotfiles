set number relativenumber
set cursorline
set shiftwidth=4
set autoindent

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on    " required

set background=light
colorscheme PaperColor

