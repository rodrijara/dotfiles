" command! Navbar vsplit ./ 
set number relativenumber
set cursorline
set shiftwidth=4
set autoindent

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'thoughtbot/vim-rspec'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'

call vundle#end()
filetype plugin indent on    " required

set background=light
colorscheme PaperColor

let mapleader = ','

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>p


imap <c-q> <ESC>
nmap <c-q> <ESC>

