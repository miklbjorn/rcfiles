set lazyredraw 
set number
set splitright
set relativenumber
set mouse=a
set expandtab
set shiftwidth=2
set softtabstop=2
set ttyfast
inoremap jk <ESC>
set nocompatible              " be iMproved, required
filetype off                  " required

 "set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call plug#begin()
 "alternatively, pass a path where Vundle should install plugins
Plug 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe' " using vundle for YouCompleteMe since Vim-Plug for some reason makes vim freeze
Plug 'vim-airline/vim-airline'
"Plugin 'altercation/vim-colors-solarized'
 "Airline themes
Plug 'vim-airline/vim-airline-themes'
call vundle#end()            " required
call plug#end()            " required
filetype plugin indent on    " required
 "Airline settings
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme = 'solarized'
let g:solarized_termcolors=256
set t_Co=256  
"set cursorline
"colorscheme desert
set background=dark
hi CursorLineNR ctermbg=4 cterm=NONE
hi CursorLine ctermbg=0 cterm=NONE
let g:airline#extensions#tabline#enabled =1
"nnoremap <leader>3 yypVr=kyykpVr=
syntax on
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h9
