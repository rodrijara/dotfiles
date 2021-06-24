"ucomman! Navbar vsplit ./ 
set number relativenumber
set cursorline
set shiftwidth=4
set tabstop=4
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
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'tomasiser/vim-code-dark'

call vundle#end()

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'vim-scripts/vim-auto-save'
call plug#end()

filetype plugin indent on    " required


" set background=light
" colorscheme PaperColor
set background=dark
colorscheme codedark

let g:airline_theme = 'codedark'
let mapleader = ','

" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_silent = 1  " do not display the auto-save notification
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>p

" remap escape to Ctrl-q
imap <c-q> <ESC>
nmap <c-q> <ESC>

" Automatically closing braces

" inoremap {<CR> {<CR>}<Esc>ko
" inoremap [<CR> [<CR>]<Esc>ko
" inoremap (<CR> (<CR>)<Esc>ko

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

function! RunGoInTerminal(filename)
    let s:gocommand = 'VtrSendCommandToRunner go run' . a:filename
    return s:gocommand
endfunction

let s:filename = expand('%p')

command! Rungo call RunGoInTerminal(s:filename)


